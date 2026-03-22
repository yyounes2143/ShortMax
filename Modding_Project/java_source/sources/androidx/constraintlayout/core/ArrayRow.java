package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable mVariable = null;
    float mConstantValue = 0.0f;
    boolean mUsed = false;
    ArrayList<SolverVariable> mVariablesToUpdate = new ArrayList<>();
    boolean mIsSimpleDefinition = false;

    /* loaded from: classes.dex */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f10, boolean z10);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f10);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i10);

        float getVariableValue(int i10);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f10);

        float remove(SolverVariable solverVariable, boolean z10);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z10);
    }

    public ArrayRow() {
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        if (solverVariable.usageInRowCount <= 1) {
            return true;
        }
        return false;
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float variableValue = this.variables.getVariableValue(i10);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i10);
                if ((zArr == null || !zArr[variable.f1292id]) && variable != solverVariable && (((type = variable.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f10)) {
                    f10 = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i10) {
        this.variables.put(linearSystem.createErrorVariable(i10, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i10, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow addSingleError(SolverVariable solverVariable, int i10) {
        this.variables.put(solverVariable, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z10;
        SolverVariable chooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (chooseSubjectInVariables == null) {
            z10 = true;
        } else {
            pivot(chooseSubjectInVariables);
            z10 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
        }
        return z10;
    }

    SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        boolean isNew;
        boolean isNew2;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        float f10 = 0.0f;
        float f11 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        SolverVariable solverVariable2 = null;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float variableValue = this.variables.getVariableValue(i10);
            SolverVariable variable = this.variables.getVariable(i10);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null) {
                    isNew2 = isNew(variable, linearSystem);
                } else if (f10 > variableValue) {
                    isNew2 = isNew(variable, linearSystem);
                } else if (!z10 && isNew(variable, linearSystem)) {
                    f10 = variableValue;
                    solverVariable = variable;
                    z10 = true;
                }
                z10 = isNew2;
                f10 = variableValue;
                solverVariable = variable;
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null) {
                    isNew = isNew(variable, linearSystem);
                } else if (f11 > variableValue) {
                    isNew = isNew(variable, linearSystem);
                } else if (!z11 && isNew(variable, linearSystem)) {
                    f11 = variableValue;
                    solverVariable2 = variable;
                    z11 = true;
                }
                z11 = isNew;
                f11 = variableValue;
                solverVariable2 = variable;
            }
        }
        if (solverVariable != null) {
            return solverVariable;
        }
        return solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.mVariable = null;
        this.mConstantValue = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, float f10, SolverVariable solverVariable3, SolverVariable solverVariable4, int i11) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f10 == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                this.mConstantValue = (-i10) + i11;
            }
        } else if (f10 <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.mConstantValue = i10;
        } else if (f10 >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.mConstantValue = -i11;
        } else {
            float f11 = 1.0f - f10;
            this.variables.put(solverVariable, f11 * 1.0f);
            this.variables.put(solverVariable2, f11 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f10);
            this.variables.put(solverVariable4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                this.mConstantValue = ((-i10) * f11) + (i11 * f10);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i10) {
        this.mVariable = solverVariable;
        float f10 = i10;
        solverVariable.computedValue = f10;
        this.mConstantValue = f10;
        this.mIsSimpleDefinition = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f10) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f10);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f10);
        this.variables.put(solverVariable4, -f10);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f10, float f11, float f12, SolverVariable solverVariable, int i10, SolverVariable solverVariable2, int i11, SolverVariable solverVariable3, int i12, SolverVariable solverVariable4, int i13) {
        if (f11 != 0.0f && f10 != f12) {
            float f13 = (f10 / f11) / (f12 / f11);
            this.mConstantValue = ((-i10) - i11) + (i12 * f13) + (i13 * f13);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f13);
            this.variables.put(solverVariable3, -f13);
        } else {
            this.mConstantValue = ((-i10) - i11) + i12 + i13;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f10, float f11, float f12, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.mConstantValue = 0.0f;
        if (f11 != 0.0f && f10 != f12) {
            if (f10 == 0.0f) {
                this.variables.put(solverVariable, 1.0f);
                this.variables.put(solverVariable2, -1.0f);
            } else if (f12 == 0.0f) {
                this.variables.put(solverVariable3, 1.0f);
                this.variables.put(solverVariable4, -1.0f);
            } else {
                float f13 = (f10 / f11) / (f12 / f11);
                this.variables.put(solverVariable, 1.0f);
                this.variables.put(solverVariable2, -1.0f);
                this.variables.put(solverVariable4, f13);
                this.variables.put(solverVariable3, -f13);
            }
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i10) {
        if (i10 < 0) {
            this.mConstantValue = i10 * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.mConstantValue = i10;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.mConstantValue = i10;
        }
        if (!z10) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.mConstantValue = i10;
        }
        if (!z10) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.mConstantValue = -f10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensurePositiveConstant() {
        float f10 = this.mConstantValue;
        if (f10 < 0.0f) {
            this.mConstantValue = f10 * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.mVariable;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.mVariable;
        if (solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.mConstantValue >= 0.0f)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.mVariable = null;
            this.variables.clear();
            for (int i10 = 0; i10 < arrayRow.variables.getCurrentSize(); i10++) {
                this.variables.add(arrayRow.variables.getVariable(i10), arrayRow.variables.getVariableValue(i10), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        if (this.mVariable == null && this.mConstantValue == 0.0f && this.variables.getCurrentSize() == 0) {
            return true;
        }
        return false;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.mVariable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.mVariable.mDefinitionId = -1;
            this.mVariable = null;
        }
        float remove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.mVariable = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.mConstantValue /= remove;
        this.variables.divideByAmount(remove);
    }

    public void reset() {
        this.mVariable = null;
        this.variables.clear();
        this.mConstantValue = 0.0f;
        this.mIsSimpleDefinition = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int sizeInBytes() {
        int i10;
        if (this.mVariable != null) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        return i10 + 8 + this.variables.sizeInBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toReadableString() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.toReadableString():java.lang.String");
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10) {
        if (solverVariable != null && solverVariable.isFinalValue) {
            this.mConstantValue += solverVariable.computedValue * this.variables.get(solverVariable);
            this.variables.remove(solverVariable, z10);
            if (z10) {
                solverVariable.removeFromRow(this);
            }
            if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
                this.mIsSimpleDefinition = true;
                linearSystem.hasSimpleDefinition = true;
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z10) {
        this.mConstantValue += arrayRow.mConstantValue * this.variables.use(arrayRow, z10);
        if (z10) {
            arrayRow.mVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.mVariable != null && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10) {
        if (solverVariable != null && solverVariable.mIsSynonym) {
            float f10 = this.variables.get(solverVariable);
            this.mConstantValue += solverVariable.mSynonymDelta * f10;
            this.variables.remove(solverVariable, z10);
            if (z10) {
                solverVariable.removeFromRow(this);
            }
            this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.mSynonym], f10, z10);
            if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
                this.mIsSimpleDefinition = true;
                linearSystem.hasSimpleDefinition = true;
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int currentSize = this.variables.getCurrentSize();
            for (int i10 = 0; i10 < currentSize; i10++) {
                SolverVariable variable = this.variables.getVariable(i10);
                if (variable.mDefinitionId != -1 || variable.isFinalValue || variable.mIsSynonym) {
                    this.mVariablesToUpdate.add(variable);
                }
            }
            int size = this.mVariablesToUpdate.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    SolverVariable solverVariable = this.mVariablesToUpdate.get(i11);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.mIsSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.mDefinitionId], true);
                    }
                }
                this.mVariablesToUpdate.clear();
            } else {
                z10 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.mVariable != null && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        int i10 = solverVariable.strength;
        float f10 = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f10 = 1000.0f;
            } else if (i10 == 3) {
                f10 = 1000000.0f;
            } else if (i10 == 4) {
                f10 = 1.0E9f;
            } else if (i10 == 5) {
                f10 = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f10);
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.mConstantValue = i10;
        }
        if (!z10) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        }
        return this;
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i10, SolverVariable solverVariable2) {
        this.mConstantValue = i10;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
