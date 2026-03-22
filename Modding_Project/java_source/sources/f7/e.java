package f7;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public abstract class e extends b implements f {
    public static f j(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
        if (queryLocalInterface instanceof f) {
            return (f) queryLocalInterface;
        }
        return new d(iBinder);
    }
}
