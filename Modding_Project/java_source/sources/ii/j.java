package ii;

import android.content.Context;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SAuthDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class j extends hi.b implements ka.b {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f53439j = new a(null);

    /* compiled from: SAuthDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // ka.b
    public void a() {
        dismiss();
    }

    @Override // ka.b
    public void b() {
        show();
    }

    @Override // hi.b, fi.a
    @NotNull
    public String k() {
        return "SAuthDialog";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fi.a, android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
