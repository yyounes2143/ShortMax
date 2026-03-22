package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLNumber extends CLElement {
    float mValue;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.mValue = Float.NaN;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLNumber(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CLNumber)) {
            return false;
        }
        float f10 = getFloat();
        float f11 = ((CLNumber) obj).getFloat();
        if ((Float.isNaN(f10) && Float.isNaN(f11)) || f10 == f11) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public float getFloat() {
        if (Float.isNaN(this.mValue) && hasContent()) {
            this.mValue = Float.parseFloat(content());
        }
        return this.mValue;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int getInt() {
        if (Float.isNaN(this.mValue) && hasContent()) {
            this.mValue = Integer.parseInt(content());
        }
        return (int) this.mValue;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int hashCode() {
        int i10;
        int hashCode = super.hashCode() * 31;
        float f10 = this.mValue;
        if (f10 != 0.0f) {
            i10 = Float.floatToIntBits(f10);
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    public boolean isInt() {
        float f10 = getFloat();
        if (((int) f10) == f10) {
            return true;
        }
        return false;
    }

    public void putValue(float f10) {
        this.mValue = f10;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toFormattedJSON(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        addIndent(sb2, i10);
        float f10 = getFloat();
        int i12 = (int) f10;
        if (i12 == f10) {
            sb2.append(i12);
        } else {
            sb2.append(f10);
        }
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toJSON() {
        float f10 = getFloat();
        int i10 = (int) f10;
        if (i10 == f10) {
            return "" + i10;
        }
        return "" + f10;
    }

    public CLNumber(float f10) {
        super(null);
        this.mValue = f10;
    }
}
