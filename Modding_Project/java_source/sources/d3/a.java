package d3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import c3.q;
import com.facebook.drawee.generic.RoundingParams;
/* compiled from: GenericDraweeHierarchyInflater.java */
/* loaded from: classes3.dex */
public class a {
    public static Drawable a(Context context, TypedArray typedArray, int i10) {
        int resourceId = typedArray.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getDrawable(resourceId);
    }

    private static RoundingParams b(com.facebook.drawee.generic.b bVar) {
        if (bVar.s() == null) {
            bVar.I(new RoundingParams());
        }
        return bVar.s();
    }

    public static q c(TypedArray typedArray, int i10) {
        switch (typedArray.getInt(i10, -2)) {
            case -1:
                return null;
            case 0:
                return q.f3019a;
            case 1:
                return q.f3022d;
            case 2:
                return q.f3023e;
            case 3:
                return q.f3024f;
            case 4:
                return q.f3025g;
            case 5:
                return q.f3026h;
            case 6:
                return q.f3027i;
            case 7:
                return q.f3028j;
            case 8:
                return q.f3029k;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }

    public static com.facebook.drawee.generic.b d(Context context, AttributeSet attributeSet) {
        if (f4.b.d()) {
            f4.b.a("GenericDraweeHierarchyBuilder#inflateBuilder");
        }
        com.facebook.drawee.generic.b e10 = e(new com.facebook.drawee.generic.b(context.getResources()), context, attributeSet);
        if (f4.b.d()) {
            f4.b.b();
        }
        return e10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x01c4, code lost:
        if (r13 != false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01c6, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01e4, code lost:
        if (r15 != false) goto L121;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.drawee.generic.b e(com.facebook.drawee.generic.b r17, android.content.Context r18, android.util.AttributeSet r19) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d3.a.e(com.facebook.drawee.generic.b, android.content.Context, android.util.AttributeSet):com.facebook.drawee.generic.b");
    }
}
