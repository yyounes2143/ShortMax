package androidx.constraintlayout.core.dsl;

import java.util.Arrays;
/* loaded from: classes.dex */
public class Keys {
    protected void append(StringBuilder sb2, String str, int i10) {
        if (i10 != Integer.MIN_VALUE) {
            sb2.append(str);
            sb2.append(":'");
            sb2.append(i10);
            sb2.append("',\n");
        }
    }

    protected String unpack(String[] strArr) {
        String str;
        StringBuilder sb2 = new StringBuilder("[");
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 == 0) {
                str = "'";
            } else {
                str = ",'";
            }
            sb2.append(str);
            sb2.append(strArr[i10]);
            sb2.append("'");
        }
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void append(StringBuilder sb2, String str, String str2) {
        if (str2 != null) {
            sb2.append(str);
            sb2.append(":'");
            sb2.append(str2);
            sb2.append("',\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void append(StringBuilder sb2, String str, float f10) {
        if (Float.isNaN(f10)) {
            return;
        }
        sb2.append(str);
        sb2.append(":");
        sb2.append(f10);
        sb2.append(",\n");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void append(StringBuilder sb2, String str, String[] strArr) {
        if (strArr != null) {
            sb2.append(str);
            sb2.append(":");
            sb2.append(unpack(strArr));
            sb2.append(",\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void append(StringBuilder sb2, String str, float[] fArr) {
        if (fArr != null) {
            sb2.append(str);
            sb2.append("percentWidth:");
            sb2.append(Arrays.toString(fArr));
            sb2.append(",\n");
        }
    }
}
