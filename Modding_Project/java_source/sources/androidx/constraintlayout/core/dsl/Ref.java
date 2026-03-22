package androidx.constraintlayout.core.dsl;

import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public class Ref {
    private String mId;
    private float mPostMargin;
    private float mPreMargin;
    private float mWeight;

    Ref(String str) {
        this.mWeight = Float.NaN;
        this.mPreMargin = Float.NaN;
        this.mPostMargin = Float.NaN;
        this.mId = str;
    }

    public static void addStringToReferences(String str, ArrayList<Ref> arrayList) {
        Object obj;
        if (str != null && str.length() != 0) {
            Object[] objArr = new Object[4];
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < str.length(); i12++) {
                char charAt = str.charAt(i12);
                if (charAt != ' ' && charAt != '\'') {
                    if (charAt != ',') {
                        if (charAt != '[') {
                            if (charAt != ']') {
                                sb2.append(charAt);
                            } else if (i11 > 0) {
                                i11--;
                                objArr[i10] = sb2.toString();
                                sb2.setLength(0);
                                Object obj2 = objArr[0];
                                if (obj2 != null) {
                                    arrayList.add(new Ref(obj2.toString(), parseFloat(objArr[1]), parseFloat(objArr[2]), parseFloat(objArr[3])));
                                    Arrays.fill(objArr, (Object) null);
                                    i10 = 0;
                                }
                            }
                        } else {
                            i11++;
                        }
                    } else {
                        if (i10 < 3) {
                            objArr[i10] = sb2.toString();
                            sb2.setLength(0);
                            i10++;
                        }
                        if (i11 == 1 && (obj = objArr[0]) != null) {
                            arrayList.add(new Ref(obj.toString()));
                            objArr[0] = null;
                            i10 = 0;
                        }
                    }
                }
            }
        }
    }

    public static float parseFloat(Object obj) {
        try {
            return Float.parseFloat(obj.toString());
        } catch (Exception unused) {
            return Float.NaN;
        }
    }

    public static Ref parseStringToRef(String str) {
        String[] split = str.replaceAll("[\\[\\]\\']", "").split(",");
        if (split.length == 0) {
            return null;
        }
        Object[] objArr = new Object[4];
        for (int i10 = 0; i10 < split.length && i10 < 4; i10++) {
            objArr[i10] = split[i10];
        }
        return new Ref(objArr[0].toString().replace("'", ""), parseFloat(objArr[1]), parseFloat(objArr[2]), parseFloat(objArr[3]));
    }

    public String getId() {
        return this.mId;
    }

    public float getPostMargin() {
        return this.mPostMargin;
    }

    public float getPreMargin() {
        return this.mPreMargin;
    }

    public float getWeight() {
        return this.mWeight;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setPostMargin(float f10) {
        this.mPostMargin = f10;
    }

    public void setPreMargin(float f10) {
        this.mPreMargin = f10;
    }

    public void setWeight(float f10) {
        this.mWeight = f10;
    }

    public String toString() {
        boolean z10;
        float f10;
        String str = this.mId;
        if (str != null && str.length() != 0) {
            StringBuilder sb2 = new StringBuilder();
            if (Float.isNaN(this.mWeight) && Float.isNaN(this.mPreMargin) && Float.isNaN(this.mPostMargin)) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                sb2.append("[");
            }
            sb2.append("'");
            sb2.append(this.mId);
            sb2.append("'");
            float f11 = 0.0f;
            if (!Float.isNaN(this.mPostMargin)) {
                sb2.append(",");
                if (!Float.isNaN(this.mWeight)) {
                    f10 = this.mWeight;
                } else {
                    f10 = 0.0f;
                }
                sb2.append(f10);
                sb2.append(",");
                if (!Float.isNaN(this.mPreMargin)) {
                    f11 = this.mPreMargin;
                }
                sb2.append(f11);
                sb2.append(",");
                sb2.append(this.mPostMargin);
            } else if (!Float.isNaN(this.mPreMargin)) {
                sb2.append(",");
                if (!Float.isNaN(this.mWeight)) {
                    f11 = this.mWeight;
                }
                sb2.append(f11);
                sb2.append(",");
                sb2.append(this.mPreMargin);
            } else if (!Float.isNaN(this.mWeight)) {
                sb2.append(",");
                sb2.append(this.mWeight);
            }
            if (z10) {
                sb2.append("]");
            }
            sb2.append(",");
            return sb2.toString();
        }
        return "";
    }

    Ref(String str, float f10) {
        this.mPreMargin = Float.NaN;
        this.mPostMargin = Float.NaN;
        this.mId = str;
        this.mWeight = f10;
    }

    Ref(String str, float f10, float f11) {
        this.mPostMargin = Float.NaN;
        this.mId = str;
        this.mWeight = f10;
        this.mPreMargin = f11;
    }

    Ref(String str, float f10, float f11, float f12) {
        this.mId = str;
        this.mWeight = f10;
        this.mPreMargin = f11;
        this.mPostMargin = f12;
    }
}
