package zp;

import android.content.Context;
import android.view.View;
import io.bidmachine.rendering.internal.view.c;
import jq.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class a extends up.a {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final c f72331r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull up.c adFormListener, @NotNull b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f72331r = new c(context);
    }

    @Override // up.a
    @NotNull
    public View D() {
        return this.f72331r;
    }

    @Override // tp.f
    public void c() {
        z().a(this);
    }

    @Override // tp.b0, tp.v
    public void e(long j10, long j11, float f10) {
        this.f72331r.e(j10, j11, f10);
    }
}
