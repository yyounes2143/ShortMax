package hi;

import android.content.Context;
import android.content.DialogInterface;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogLoadingBinding;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.w;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ku.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoadingDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public class b extends fi.a<DialogLoadingBinding> {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f52878i = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f52879d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private j f52880e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f52881f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f52882g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private InterfaceC0768b f52883h;

    /* compiled from: LoadingDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LoadingDialog.kt */
    @Metadata
    /* renamed from: hi.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public interface InterfaceC0768b {
        void a(boolean z10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f52882g = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(b bVar, DialogInterface dialogInterface) {
        boolean z10;
        j jVar = bVar.f52880e;
        if (jVar != null) {
            w.a(jVar);
        }
        InterfaceC0768b interfaceC0768b = bVar.f52883h;
        if (interfaceC0768b != null) {
            if (bVar.f52881f && bVar.f52882g) {
                z10 = true;
            } else {
                z10 = false;
            }
            interfaceC0768b.a(z10);
        }
    }

    @Override // fi.a
    public float e() {
        return 0.0f;
    }

    @Override // fi.a
    public int f() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        return deviceUtil.F() - deviceUtil.J();
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_loading;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "LoadingDialog";
    }

    @Override // fi.a
    public int n() {
        return -1;
    }

    @Override // android.app.Dialog
    @ms.c
    public void onBackPressed() {
        this.f52881f = true;
        super.onBackPressed();
    }

    @Override // fi.a
    public void p() {
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: hi.a
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                b.v(b.this, dialogInterface);
            }
        });
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        this.f52882g = z10;
    }

    public final void w(boolean z10) {
        this.f52882g = z10;
    }

    public final void x(@Nullable InterfaceC0768b interfaceC0768b) {
        this.f52883h = interfaceC0768b;
    }

    public final void y(@Nullable String str) {
        this.f52879d = str;
    }
}
