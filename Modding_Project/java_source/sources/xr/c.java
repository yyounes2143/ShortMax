package xr;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.o;
import xr.b;
/* compiled from: TextContent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTextContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextContent.kt\nio/ktor/http/content/TextContent\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,29:1\n8#2,3:30\n*S KotlinDebug\n*F\n+ 1 TextContent.kt\nio/ktor/http/content/TextContent\n*L\n20#1:30,3\n*E\n"})
/* loaded from: classes8.dex */
public final class c extends b.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f70525a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final io.ktor.http.a f70526b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final o f70527c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f70528d;

    public /* synthetic */ c(String str, io.ktor.http.a aVar, o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, aVar, (i10 & 4) != 0 ? null : oVar);
    }

    @Override // xr.b
    @NotNull
    public Long a() {
        return Long.valueOf(this.f70528d.length);
    }

    @Override // xr.b
    @NotNull
    public io.ktor.http.a b() {
        return this.f70526b;
    }

    @Override // xr.b.a
    @NotNull
    public byte[] d() {
        return this.f70528d;
    }

    @NotNull
    public String toString() {
        return "TextContent[" + b() + "] \"" + StringsKt.I1(this.f70525a, 30) + '\"';
    }

    public c(@NotNull String text, @NotNull io.ktor.http.a contentType, @Nullable o oVar) {
        byte[] g10;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        this.f70525a = text;
        this.f70526b = contentType;
        this.f70527c = oVar;
        Charset a10 = wr.a.a(b());
        a10 = a10 == null ? Charsets.UTF_8 : a10;
        if (Intrinsics.areEqual(a10, Charsets.UTF_8)) {
            g10 = StringsKt.D(text);
        } else {
            CharsetEncoder newEncoder = a10.newEncoder();
            Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
            g10 = gs.a.g(newEncoder, text, 0, text.length());
        }
        this.f70528d = g10;
    }
}
