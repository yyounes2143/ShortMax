package fk;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import com.hades.aar.activity.IDActivity;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClipboardUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f51739a = new j();

    private j() {
    }

    public final void a() {
        IDActivity b10;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 == null || (b10 = d10.get()) == null) {
            b10 = u.f51776a.b();
        }
        Object systemService = b10.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ClipboardManager clipboardManager = (ClipboardManager) systemService;
        if (Build.VERSION.SDK_INT >= 28) {
            clipboardManager.clearPrimaryClip();
        } else {
            clipboardManager.setPrimaryClip(ClipData.newPlainText("", ""));
        }
    }

    public final void b(@NotNull Context context, @NotNull String text) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(text, "text");
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(null, text));
    }

    @NotNull
    public final String c() {
        IDActivity b10;
        ClipData.Item itemAt;
        CharSequence text;
        String obj;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 == null || (b10 = d10.get()) == null) {
            b10 = u.f51776a.b();
        }
        Object systemService = b10.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
        if (primaryClip == null || (itemAt = primaryClip.getItemAt(0)) == null || (text = itemAt.getText()) == null || (obj = text.toString()) == null) {
            return "";
        }
        return obj;
    }
}
