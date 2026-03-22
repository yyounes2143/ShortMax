package m0;

import android.view.View;
import gt.k0;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Disposable.kt */
@Metadata
/* loaded from: classes2.dex */
public final class o implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final View f62439a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private volatile k0<? extends g> f62440b;

    public o(@NotNull View view, @NotNull k0<? extends g> k0Var) {
        this.f62439a = view;
        this.f62440b = k0Var;
    }

    public void a(@NotNull k0<? extends g> k0Var) {
        this.f62440b = k0Var;
    }
}
