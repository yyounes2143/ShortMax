package sm;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.vast.view.IabTextView;
/* loaded from: classes7.dex */
public class g extends i<IabTextView> {
    public g(@Nullable View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // sm.i
    @NonNull
    protected IabElementStyle j(@NonNull Context context, @Nullable IabElementStyle iabElementStyle) {
        return a.f66390j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // sm.i
    /* renamed from: r */
    public void c(@NonNull Context context, @NonNull IabTextView iabTextView, @NonNull IabElementStyle iabElementStyle) {
        String str;
        super.c(context, iabTextView, iabElementStyle);
        if (!TextUtils.isEmpty(iabElementStyle.h())) {
            str = iabElementStyle.h();
        } else {
            str = "Learn more";
        }
        iabTextView.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // sm.i
    @NonNull
    /* renamed from: s */
    public IabTextView h(@NonNull Context context, @NonNull IabElementStyle iabElementStyle) {
        return new IabTextView(context);
    }
}
