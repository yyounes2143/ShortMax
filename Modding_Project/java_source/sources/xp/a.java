package xp;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import io.bidmachine.rendering.model.MediaSource;
import jq.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lq.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.i;
import rq.k0;
import rq.l0;
import rq.p0;
import rq.t;
import up.c;
@Metadata
/* loaded from: classes8.dex */
public final class a extends up.a {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final ImageView f70521r;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* renamed from: xp.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public final class C0971a implements a.InterfaceC0869a<Bitmap> {
        public C0971a() {
        }

        @Override // lq.a.InterfaceC0869a
        public void a(@NotNull t error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // lq.a.InterfaceC0869a
        /* renamed from: b */
        public void onSuccess(@NotNull Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            a.this.f70521r.setImageBitmap(bitmap);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull c adFormListener, @NotNull b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f70521r = new ImageView(context);
    }

    private final void J(MediaSource mediaSource) {
        if (mediaSource != null) {
            C().b(mediaSource, new C0971a());
        }
    }

    @Override // up.a
    @NotNull
    public View D() {
        return this.f70521r;
    }

    @Override // tp.f
    public void c() {
        l0 l0Var;
        MediaSource.a aVar = MediaSource.f58545b;
        J(aVar.c(h().k()));
        z().a(this);
        k0 l10 = h().l();
        if (l10 != null) {
            l0Var = l10.a();
        } else {
            l0Var = null;
        }
        if (l0Var != null) {
            if (l0Var instanceof i) {
                J(aVar.b(((i) l0Var).a()));
                return;
            } else if (l0Var instanceof p0) {
                J(aVar.d(((p0) l0Var).a()));
                return;
            } else {
                x("Invalid resource type (" + l0Var.getClass().getSimpleName() + "), it should be Base64ResourceSource or UrlResourceSource");
                return;
            }
        }
        J(aVar.a(h().m()));
    }
}
