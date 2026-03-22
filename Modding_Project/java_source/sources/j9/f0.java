package j9;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionGenerator.kt */
@Metadata
/* loaded from: classes5.dex */
public final class f0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final m0 f60302a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final o0 f60303b;

    public f0(@NotNull m0 timeProvider, @NotNull o0 uuidGenerator) {
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(uuidGenerator, "uuidGenerator");
        this.f60302a = timeProvider;
        this.f60303b = uuidGenerator;
    }

    private final String b() {
        String uuid = this.f60303b.next().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        String lowerCase = StringsKt.P(uuid, "-", "", false, 4, null).toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @NotNull
    public final com.google.firebase.sessions.j a(@Nullable com.google.firebase.sessions.j jVar) {
        String str;
        int i10;
        String a10;
        String b10 = b();
        if (jVar != null && (a10 = jVar.a()) != null) {
            str = a10;
        } else {
            str = b10;
        }
        if (jVar != null) {
            i10 = jVar.c() + 1;
        } else {
            i10 = 0;
        }
        return new com.google.firebase.sessions.j(b10, str, i10, this.f60302a.a().b());
    }
}
