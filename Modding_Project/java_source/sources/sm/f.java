package sm;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.view.CircleCountdownView;
import io.bidmachine.iab.vast.view.TextCountdownView;
/* loaded from: classes7.dex */
public class f extends i<View> {
    public f(@Nullable View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // sm.i
    @NonNull
    View h(@NonNull Context context, @NonNull IabElementStyle iabElementStyle) {
        if (MimeTypes.BASE_TYPE_TEXT.equals(iabElementStyle.F())) {
            return new TextCountdownView(context);
        }
        return new CircleCountdownView(context);
    }

    @Override // sm.i
    @NonNull
    protected IabElementStyle j(@NonNull Context context, @Nullable IabElementStyle iabElementStyle) {
        if (iabElementStyle != null && MimeTypes.BASE_TYPE_TEXT.equals(iabElementStyle.F())) {
            return a.f66389i;
        }
        return a.f66388h;
    }

    public void r(int i10, int i11) {
        T t10 = this.f66438b;
        if (t10 instanceof TextCountdownView) {
            TextCountdownView textCountdownView = (TextCountdownView) t10;
            if (i11 == 0) {
                textCountdownView.setText("");
            } else {
                textCountdownView.setRemaining(i11);
            }
        } else if (t10 instanceof CircleCountdownView) {
            ((CircleCountdownView) t10).g(i10, i11);
        }
    }
}
