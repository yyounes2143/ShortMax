package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float sEpsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    private final int mNone = -1;
    private int mSize = 16;
    private int mHashSize = 16;
    int[] mKeys = new int[16];
    int[] mNextKeys = new int[16];
    int[] mVariables = new int[16];
    float[] mValues = new float[16];
    int[] mPrevious = new int[16];
    int[] mNext = new int[16];
    int mCount = 0;
    int mHead = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    private void addToHashMap(SolverVariable solverVariable, int i10) {
        int[] iArr;
        int i11 = solverVariable.f1292id % this.mHashSize;
        int[] iArr2 = this.mKeys;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            iArr2[i11] = i10;
        } else {
            while (true) {
                iArr = this.mNextKeys;
                int i13 = iArr[i12];
                if (i13 == -1) {
                    break;
                }
                i12 = i13;
            }
            iArr[i12] = i10;
        }
        this.mNextKeys[i10] = -1;
    }

    private void addVariable(int i10, SolverVariable solverVariable, float f10) {
        this.mVariables[i10] = solverVariable.f1292id;
        this.mValues[i10] = f10;
        this.mPrevious[i10] = -1;
        this.mNext[i10] = -1;
        solverVariable.addToRow(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    private void displayHash() {
        for (int i10 = 0; i10 < this.mHashSize; i10++) {
            if (this.mKeys[i10] != -1) {
                String str = hashCode() + " hash [" + i10 + "] => ";
                int i11 = this.mKeys[i10];
                boolean z10 = false;
                while (!z10) {
                    str = str + " " + this.mVariables[i11];
                    int i12 = this.mNextKeys[i11];
                    if (i12 != -1) {
                        i11 = i12;
                    } else {
                        z10 = true;
                    }
                }
                System.out.println(str);
            }
        }
    }

    private int findEmptySlot() {
        for (int i10 = 0; i10 < this.mSize; i10++) {
            if (this.mVariables[i10] == -1) {
                return i10;
            }
        }
        return -1;
    }

    private void increaseSize() {
        int i10 = this.mSize * 2;
        this.mVariables = Arrays.copyOf(this.mVariables, i10);
        this.mValues = Arrays.copyOf(this.mValues, i10);
        this.mPrevious = Arrays.copyOf(this.mPrevious, i10);
        this.mNext = Arrays.copyOf(this.mNext, i10);
        this.mNextKeys = Arrays.copyOf(this.mNextKeys, i10);
        for (int i11 = this.mSize; i11 < i10; i11++) {
            this.mVariables[i11] = -1;
            this.mNextKeys[i11] = -1;
        }
        this.mSize = i10;
    }

    private void insertVariable(int i10, SolverVariable solverVariable, float f10) {
        int findEmptySlot = findEmptySlot();
        addVariable(findEmptySlot, solverVariable, f10);
        if (i10 != -1) {
            this.mPrevious[findEmptySlot] = i10;
            int[] iArr = this.mNext;
            iArr[findEmptySlot] = iArr[i10];
            iArr[i10] = findEmptySlot;
        } else {
            this.mPrevious[findEmptySlot] = -1;
            if (this.mCount > 0) {
                this.mNext[findEmptySlot] = this.mHead;
                this.mHead = findEmptySlot;
            } else {
                this.mNext[findEmptySlot] = -1;
            }
        }
        int i11 = this.mNext[findEmptySlot];
        if (i11 != -1) {
            this.mPrevious[i11] = findEmptySlot;
        }
        addToHashMap(solverVariable, findEmptySlot);
    }

    private void removeFromHashMap(SolverVariable solverVariable) {
        int[] iArr;
        int i10;
        int i11 = solverVariable.f1292id;
        int i12 = i11 % this.mHashSize;
        int[] iArr2 = this.mKeys;
        int i13 = iArr2[i12];
        if (i13 == -1) {
            return;
        }
        if (this.mVariables[i13] == i11) {
            int[] iArr3 = this.mNextKeys;
            iArr2[i12] = iArr3[i13];
            iArr3[i13] = -1;
            return;
        }
        while (true) {
            iArr = this.mNextKeys;
            i10 = iArr[i13];
            if (i10 == -1 || this.mVariables[i10] == i11) {
                break;
            }
            i13 = i10;
        }
        if (i10 != -1 && this.mVariables[i10] == i11) {
            iArr[i13] = iArr[i10];
            iArr[i10] = -1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f10, boolean z10) {
        float f11 = sEpsilon;
        if (f10 > (-f11) && f10 < f11) {
            return;
        }
        int indexOf = indexOf(solverVariable);
        if (indexOf == -1) {
            put(solverVariable, f10);
            return;
        }
        float[] fArr = this.mValues;
        float f12 = fArr[indexOf] + f10;
        fArr[indexOf] = f12;
        float f13 = sEpsilon;
        if (f12 > (-f13) && f12 < f13) {
            fArr[indexOf] = 0.0f;
            remove(solverVariable, z10);
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void clear() {
        int i10 = this.mCount;
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable variable = getVariable(i11);
            if (variable != null) {
                variable.removeFromRow(this.mRow);
            }
        }
        for (int i12 = 0; i12 < this.mSize; i12++) {
            this.mVariables[i12] = -1;
            this.mNextKeys[i12] = -1;
        }
        for (int i13 = 0; i13 < this.mHashSize; i13++) {
            this.mKeys[i13] = -1;
        }
        this.mCount = 0;
        this.mHead = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        if (indexOf(solverVariable) != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i10 = this.mCount;
        System.out.print("{ ");
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable variable = getVariable(i11);
            if (variable != null) {
                PrintStream printStream = System.out;
                printStream.print(variable + " = " + getVariableValue(i11) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f10) {
        int i10 = this.mCount;
        int i11 = this.mHead;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.mValues;
            fArr[i11] = fArr[i11] / f10;
            i11 = this.mNext[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            return this.mValues[indexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i10) {
        int i11 = this.mCount;
        if (i11 == 0) {
            return null;
        }
        int i12 = this.mHead;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10 && i12 != -1) {
                return this.mCache.mIndexedVariables[this.mVariables[i12]];
            }
            i12 = this.mNext[i12];
            if (i12 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i10) {
        int i11 = this.mCount;
        int i12 = this.mHead;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10) {
                return this.mValues[i12];
            }
            i12 = this.mNext[i12];
            if (i12 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.mCount != 0 && solverVariable != null) {
            int i10 = solverVariable.f1292id;
            int i11 = this.mKeys[i10 % this.mHashSize];
            if (i11 == -1) {
                return -1;
            }
            if (this.mVariables[i11] == i10) {
                return i11;
            }
            do {
                i11 = this.mNextKeys[i11];
                if (i11 == -1) {
                    break;
                }
            } while (this.mVariables[i11] != i10);
            if (i11 != -1 && this.mVariables[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i10 = this.mCount;
        int i11 = this.mHead;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.mValues;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.mNext[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f10) {
        float f11 = sEpsilon;
        if (f10 > (-f11) && f10 < f11) {
            remove(solverVariable, true);
            return;
        }
        if (this.mCount == 0) {
            addVariable(0, solverVariable, f10);
            addToHashMap(solverVariable, 0);
            this.mHead = 0;
            return;
        }
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            this.mValues[indexOf] = f10;
            return;
        }
        if (this.mCount + 1 >= this.mSize) {
            increaseSize();
        }
        int i10 = this.mCount;
        int i11 = this.mHead;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = this.mVariables[i11];
            int i15 = solverVariable.f1292id;
            if (i14 == i15) {
                this.mValues[i11] = f10;
                return;
            }
            if (i14 < i15) {
                i12 = i11;
            }
            i11 = this.mNext[i11];
            if (i11 == -1) {
                break;
            }
        }
        insertVariable(i12, solverVariable, f10);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z10) {
        int indexOf = indexOf(solverVariable);
        if (indexOf == -1) {
            return 0.0f;
        }
        removeFromHashMap(solverVariable);
        float f10 = this.mValues[indexOf];
        if (this.mHead == indexOf) {
            this.mHead = this.mNext[indexOf];
        }
        this.mVariables[indexOf] = -1;
        int[] iArr = this.mPrevious;
        int i10 = iArr[indexOf];
        if (i10 != -1) {
            int[] iArr2 = this.mNext;
            iArr2[i10] = iArr2[indexOf];
        }
        int i11 = this.mNext[indexOf];
        if (i11 != -1) {
            iArr[i11] = iArr[indexOf];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z10) {
            solverVariable.removeFromRow(this.mRow);
        }
        return f10;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public String toString() {
        String str;
        String str2;
        String str3 = hashCode() + " { ";
        int i10 = this.mCount;
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable variable = getVariable(i11);
            if (variable != null) {
                String str4 = str3 + variable + " = " + getVariableValue(i11) + " ";
                int indexOf = indexOf(variable);
                String str5 = str4 + "[p: ";
                if (this.mPrevious[indexOf] != -1) {
                    str = str5 + this.mCache.mIndexedVariables[this.mVariables[this.mPrevious[indexOf]]];
                } else {
                    str = str5 + DevicePublicKeyStringDef.NONE;
                }
                String str6 = str + ", n: ";
                if (this.mNext[indexOf] != -1) {
                    str2 = str6 + this.mCache.mIndexedVariables[this.mVariables[this.mNext[indexOf]]];
                } else {
                    str2 = str6 + DevicePublicKeyStringDef.NONE;
                }
                str3 = str2 + "]";
            }
        }
        return str3 + " }";
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z10) {
        float f10 = get(arrayRow.mVariable);
        remove(arrayRow.mVariable, z10);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i10 = 0;
        int i11 = 0;
        while (i10 < currentSize) {
            int i12 = solverVariableValues.mVariables[i11];
            if (i12 != -1) {
                add(this.mCache.mIndexedVariables[i12], solverVariableValues.mValues[i11] * f10, z10);
                i10++;
            }
            i11++;
        }
        return f10;
    }
}
