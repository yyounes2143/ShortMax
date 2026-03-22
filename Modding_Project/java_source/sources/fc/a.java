package fc;

import android.content.Context;
/* compiled from: DensityUtil.java */
/* loaded from: classes5.dex */
public class a {
    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
