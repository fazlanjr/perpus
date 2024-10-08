import BitArray from '../../../common/BitArray';
export default class BitArrayBuilder {
    static buildBitArray(pairs) {
        let charNumber = pairs.length * 2 - 1;
        if (pairs[pairs.length - 1].getRightChar() == null) {
            charNumber -= 1;
        }
        let size = 12 * charNumber;
        let binary = new BitArray(size);
        let accPos = 0;
        let firstPair = pairs[0];
        let firstValue = firstPair.getRightChar().getValue();
        for (let i = 11; i >= 0; --i) {
            if ((firstValue & (1 << i)) !== 0) {
                binary.set(accPos);
            }
            accPos++;
        }
        for (let i = 1; i < pairs.length; ++i) {
            let currentPair = pairs[i];
            let leftValue = currentPair.getLeftChar().getValue();
            for (let j = 11; j >= 0; --j) {
                if ((leftValue & (1 << j)) !== 0) {
                    binary.set(accPos);
                }
                accPos++;
            }
            if (currentPair.getRightChar() !== null) {
                let rightValue = currentPair.getRightChar().getValue();
                for (let j = 11; j >= 0; --j) {
                    if ((rightValue & (1 << j)) !== 0) {
                        binary.set(accPos);
                    }
                    accPos++;
                }
            }
        }
        return binary;
    }
}
