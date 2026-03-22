package ii;

import android.content.Context;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogMergeTouristProcessBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MergeTouristProcessDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class g extends fi.a<DialogMergeTouristProcessBinding> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_merge_tourist_process;
    }

    @Override // fi.a
    public void p() {
        setCancelable(false);
    }
}
