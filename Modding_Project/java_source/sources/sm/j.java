package sm;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.CircularProgressBar;
import io.bidmachine.iab.utils.IabElementStyle;
/* loaded from: classes7.dex */
public class j extends i<CircularProgressBar> {
    public j(@Nullable View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // sm.i
    @NonNull
    protected IabElementStyle j(@NonNull Context context, @Nullable IabElementStyle iabElementStyle) {
        return a.f66396p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // sm.i
    @NonNull
    /* renamed from: r */
    public CircularProgressBar h(@NonNull Context context, @NonNull IabElementStyle iabElementStyle) {
        return new CircularProgressBar(context);
    }
}
