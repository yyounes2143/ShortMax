package qp;

import io.bidmachine.rendering.model.PrivacySheetParams;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import rq.n;
import rq.t;
@Metadata
/* loaded from: classes8.dex */
public interface a<Ad> {
    void a(Ad ad2);

    void b(Ad ad2);

    void c(Ad ad2);

    void d(Ad ad2);

    void e(Ad ad2, @NotNull PrivacySheetParams privacySheetParams);

    void f(Ad ad2, @NotNull n nVar);

    void g(Ad ad2, @NotNull t tVar);

    void h(Ad ad2, @NotNull t tVar);

    void i(Ad ad2);

    void j(Ad ad2);

    void onAdLoaded(Ad ad2);
}
