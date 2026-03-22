package l4;

import androidx.annotation.RestrictTo;
import com.facebook.internal.FeatureManager;
import com.facebook.v;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: InstrumentManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f62088a = new e();

    private e() {
    }

    public static final void d() {
        if (!v.p()) {
            return;
        }
        FeatureManager.a(FeatureManager.Feature.CrashReport, new FeatureManager.a() { // from class: l4.b
            @Override // com.facebook.internal.FeatureManager.a
            public final void a(boolean z10) {
                e.e(z10);
            }
        });
        FeatureManager.a(FeatureManager.Feature.ErrorReport, new FeatureManager.a() { // from class: l4.c
            @Override // com.facebook.internal.FeatureManager.a
            public final void a(boolean z10) {
                e.f(z10);
            }
        });
        FeatureManager.a(FeatureManager.Feature.AnrReport, new FeatureManager.a() { // from class: l4.d
            @Override // com.facebook.internal.FeatureManager.a
            public final void a(boolean z10) {
                e.g(z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(boolean z10) {
        if (z10) {
            n4.c.f62759b.c();
            if (FeatureManager.g(FeatureManager.Feature.CrashShield)) {
                com.facebook.internal.instrument.a.b();
                o4.a.a();
            }
            if (FeatureManager.g(FeatureManager.Feature.ThreadCheck)) {
                q4.a.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(boolean z10) {
        if (z10) {
            p4.e.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(boolean z10) {
        if (z10) {
            m4.e.c();
        }
    }
}
