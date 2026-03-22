package g4;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.w;
/* compiled from: MultiImageTranscoderFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f52203a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f52204b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final d f52205c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Integer f52206d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f52207e;

    public f(int i10, boolean z10, @Nullable d dVar, @Nullable Integer num, boolean z11) {
        this.f52203a = i10;
        this.f52204b = z10;
        this.f52205c = dVar;
        this.f52206d = num;
        this.f52207e = z11;
    }

    private final c a(com.facebook.imageformat.c cVar, boolean z10) {
        d dVar = this.f52205c;
        if (dVar != null) {
            return dVar.createImageTranscoder(cVar, z10);
        }
        return null;
    }

    private final c b(com.facebook.imageformat.c cVar, boolean z10) {
        Integer num = this.f52206d;
        if (num == null) {
            return null;
        }
        if (num != null && num.intValue() == 0) {
            return c(cVar, z10);
        }
        if (num != null && num.intValue() == 1) {
            return d(cVar, z10);
        }
        throw new IllegalArgumentException("Invalid ImageTranscoderType");
    }

    private final c c(com.facebook.imageformat.c cVar, boolean z10) {
        return com.facebook.imagepipeline.nativecode.c.a(this.f52203a, this.f52204b, this.f52207e).createImageTranscoder(cVar, z10);
    }

    private final c d(com.facebook.imageformat.c cVar, boolean z10) {
        c createImageTranscoder = new h(this.f52203a).createImageTranscoder(cVar, z10);
        Intrinsics.checkNotNullExpressionValue(createImageTranscoder, "createImageTranscoder(...)");
        return createImageTranscoder;
    }

    @Override // g4.d
    @NotNull
    public c createImageTranscoder(@NotNull com.facebook.imageformat.c imageFormat, boolean z10) {
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        c a10 = a(imageFormat, z10);
        if (a10 == null) {
            a10 = b(imageFormat, z10);
        }
        if (a10 == null && w.a()) {
            a10 = c(imageFormat, z10);
        }
        if (a10 == null) {
            return d(imageFormat, z10);
        }
        return a10;
    }
}
