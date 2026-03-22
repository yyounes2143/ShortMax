package cd;

import android.app.Activity;
import com.android.billingclient.api.ProxyBillingActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BillingUtils.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0090a f3461a = new C0090a(null);

    /* compiled from: BillingUtils.kt */
    @Metadata
    /* renamed from: cd.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0090a {
        public /* synthetic */ C0090a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return activity instanceof ProxyBillingActivity;
        }

        private C0090a() {
        }
    }
}
