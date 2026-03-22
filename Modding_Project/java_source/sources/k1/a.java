package k1;

import android.animation.ObjectAnimator;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AlphaItemAnimation.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a implements b {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0841a f60571b = new C0841a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final float f60572c = 0.0f;

    /* renamed from: a  reason: collision with root package name */
    private final float f60573a;

    /* compiled from: AlphaItemAnimation.kt */
    @Metadata
    /* renamed from: k1.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0841a {
        public /* synthetic */ C0841a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0841a() {
        }
    }

    public a(float f10) {
        this.f60573a = f10;
    }

    @Override // k1.b
    public void a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator.ofFloat(view, "alpha", this.f60573a, 1.0f).setDuration(300L).start();
    }

    public /* synthetic */ a(float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? f60572c : f10);
    }
}
