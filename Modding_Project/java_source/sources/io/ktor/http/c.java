package io.ktor.http;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HeaderValueWithParameters.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHeaderValueWithParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParametersKt\n*L\n1#1,152:1\n1#2:153\n86#3,5:154\n*S KotlinDebug\n*F\n+ 1 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters\n*L\n52#1:154,5\n*E\n"})
/* loaded from: classes8.dex */
public abstract class c {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f59257c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59258a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<wr.d> f59259b;

    /* compiled from: HeaderValueWithParameters.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull String content, @NotNull List<wr.d> parameters) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.f59258a = content;
        this.f59259b = parameters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final String a() {
        return this.f59258a;
    }

    @NotNull
    public final List<wr.d> b() {
        return this.f59259b;
    }

    @Nullable
    public final String c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int p10 = CollectionsKt.p(this.f59259b);
        if (p10 >= 0) {
            int i10 = 0;
            while (true) {
                wr.d dVar = this.f59259b.get(i10);
                if (StringsKt.G(dVar.a(), name, true)) {
                    return dVar.b();
                }
                if (i10 != p10) {
                    i10++;
                } else {
                    return null;
                }
            }
        } else {
            return null;
        }
    }

    @NotNull
    public String toString() {
        if (this.f59259b.isEmpty()) {
            return this.f59258a;
        }
        int length = this.f59258a.length();
        int i10 = 0;
        int i11 = 0;
        for (wr.d dVar : this.f59259b) {
            i11 += dVar.a().length() + dVar.b().length() + 3;
        }
        StringBuilder sb2 = new StringBuilder(length + i11);
        sb2.append(this.f59258a);
        int p10 = CollectionsKt.p(this.f59259b);
        if (p10 >= 0) {
            while (true) {
                wr.d dVar2 = this.f59259b.get(i10);
                sb2.append("; ");
                sb2.append(dVar2.a());
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                String b10 = dVar2.b();
                if (wr.e.a(b10)) {
                    sb2.append(wr.e.d(b10));
                } else {
                    sb2.append(b10);
                }
                if (i10 == p10) {
                    break;
                }
                i10++;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "{\n            val size =…   }.toString()\n        }");
        return sb3;
    }
}
