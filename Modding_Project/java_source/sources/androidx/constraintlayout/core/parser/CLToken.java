package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLToken extends CLElement {
    int mIndex;
    char[] mTokenFalse;
    char[] mTokenNull;
    char[] mTokenTrue;
    Type mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum Type {
        UNKNOWN,
        TRUE,
        FALSE,
        NULL
    }

    public CLToken(char[] cArr) {
        super(cArr);
        this.mIndex = 0;
        this.mType = Type.UNKNOWN;
        this.mTokenTrue = "true".toCharArray();
        this.mTokenFalse = "false".toCharArray();
        this.mTokenNull = "null".toCharArray();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLToken(cArr);
    }

    public boolean getBoolean() throws CLParsingException {
        Type type = this.mType;
        if (type == Type.TRUE) {
            return true;
        }
        if (type == Type.FALSE) {
            return false;
        }
        throw new CLParsingException("this token is not a boolean: <" + content() + ">", this);
    }

    public Type getType() {
        return this.mType;
    }

    public boolean isNull() throws CLParsingException {
        if (this.mType == Type.NULL) {
            return true;
        }
        throw new CLParsingException("this token is not a null: <" + content() + ">", this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        addIndent(sb2, i10);
        sb2.append(content());
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (CLParser.sDebug) {
            return "<" + content() + ">";
        }
        return content();
    }

    public boolean validate(char c10, long j10) {
        int ordinal = this.mType.ordinal();
        boolean z10 = false;
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        char[] cArr = this.mTokenNull;
                        int i10 = this.mIndex;
                        if (cArr[i10] == c10) {
                            z10 = true;
                        }
                        if (z10 && i10 + 1 == cArr.length) {
                            setEnd(j10);
                        }
                    }
                } else {
                    char[] cArr2 = this.mTokenFalse;
                    int i11 = this.mIndex;
                    if (cArr2[i11] == c10) {
                        z10 = true;
                    }
                    if (z10 && i11 + 1 == cArr2.length) {
                        setEnd(j10);
                    }
                }
            } else {
                char[] cArr3 = this.mTokenTrue;
                int i12 = this.mIndex;
                if (cArr3[i12] == c10) {
                    z10 = true;
                }
                if (z10 && i12 + 1 == cArr3.length) {
                    setEnd(j10);
                }
            }
        } else {
            char[] cArr4 = this.mTokenTrue;
            int i13 = this.mIndex;
            if (cArr4[i13] == c10) {
                this.mType = Type.TRUE;
            } else if (this.mTokenFalse[i13] == c10) {
                this.mType = Type.FALSE;
            } else if (this.mTokenNull[i13] == c10) {
                this.mType = Type.NULL;
            }
            z10 = true;
        }
        this.mIndex++;
        return z10;
    }
}
