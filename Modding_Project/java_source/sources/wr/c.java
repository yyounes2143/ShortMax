package wr;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpHeaderValueParser.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpHeaderValueParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeaderValueParser.kt\nio/ktor/http/HeaderValue\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n288#2,2:225\n1#3:227\n*S KotlinDebug\n*F\n+ 1 HttpHeaderValueParser.kt\nio/ktor/http/HeaderValue\n*L\n38#1:225,2\n*E\n"})
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f70131a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f70132b;

    /* renamed from: c  reason: collision with root package name */
    private final double f70133c;

    public c(@NotNull String value, @NotNull List<d> params) {
        Double d10;
        Object obj;
        String b10;
        Double r10;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f70131a = value;
        this.f70132b = params;
        Iterator<T> it = params.iterator();
        while (true) {
            d10 = null;
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((d) obj).a(), CampaignEx.JSON_KEY_AD_Q)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        d dVar = (d) obj;
        double d11 = 1.0d;
        if (dVar != null && (b10 = dVar.b()) != null && (r10 = StringsKt.r(b10)) != null) {
            double doubleValue = r10.doubleValue();
            if (0.0d <= doubleValue && doubleValue <= 1.0d) {
                d10 = r10;
            }
            if (d10 != null) {
                d11 = d10.doubleValue();
            }
        }
        this.f70133c = d11;
    }

    @NotNull
    public final List<d> a() {
        return this.f70132b;
    }

    @NotNull
    public final String b() {
        return this.f70131a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f70131a, cVar.f70131a) && Intrinsics.areEqual(this.f70132b, cVar.f70132b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f70131a.hashCode() * 31) + this.f70132b.hashCode();
    }

    @NotNull
    public String toString() {
        return "HeaderValue(value=" + this.f70131a + ", params=" + this.f70132b + ')';
    }
}
