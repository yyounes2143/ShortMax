package io.ktor.client.engine;

import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ur.d;
import wr.f;
import wr.g;
import wr.i;
import xr.b;
import yr.n;
/* compiled from: Utils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nio/ktor/client/engine/UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"})
/* loaded from: classes8.dex */
public final class UtilsKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final String f58833a = "Ktor client";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f58834b;

    static {
        i iVar = i.f70141a;
        f58834b = y0.j(iVar.k(), iVar.m(), iVar.q(), iVar.n(), iVar.p());
    }

    @Nullable
    public static final Object b(@NotNull c<? super CoroutineContext> cVar) {
        CoroutineContext.Element element = cVar.getContext().get(a.f58840b);
        Intrinsics.checkNotNull(element);
        return ((a) element).a();
    }

    public static final void c(@NotNull final f requestHeaders, @NotNull final b content, @NotNull final Function2<? super String, ? super String, Unit> block) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(block, "block");
        d.a(new Function1<g, Unit>() { // from class: io.ktor.client.engine.UtilsKt$mergeHeaders$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void b(@NotNull g buildHeaders) {
                Intrinsics.checkNotNullParameter(buildHeaders, "$this$buildHeaders");
                buildHeaders.e(f.this);
                buildHeaders.e(content.c());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(g gVar) {
                b(gVar);
                return Unit.f60915a;
            }
        }).d(new Function2<String, List<? extends String>, Unit>() { // from class: io.ktor.client.engine.UtilsKt$mergeHeaders$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            public final void b(@NotNull String key, @NotNull List<String> values) {
                Set set;
                String str3;
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(values, "values");
                i iVar = i.f70141a;
                if (!Intrinsics.areEqual(iVar.g(), key) && !Intrinsics.areEqual(iVar.i(), key)) {
                    set = UtilsKt.f58834b;
                    if (set.contains(key)) {
                        Function2<String, String, Unit> function2 = block;
                        for (String str4 : values) {
                            function2.invoke(key, str4);
                        }
                        return;
                    }
                    if (Intrinsics.areEqual(iVar.j(), key)) {
                        str3 = "; ";
                    } else {
                        str3 = ",";
                    }
                    block.invoke(key, CollectionsKt.A0(values, str3, null, null, 0, null, null, 62, null));
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(String str3, List<? extends String> list) {
                b(str3, list);
                return Unit.f60915a;
            }
        });
        i iVar = i.f70141a;
        if (requestHeaders.get(iVar.w()) == null && content.c().get(iVar.w()) == null && d()) {
            block.invoke(iVar.w(), f58833a);
        }
        io.ktor.http.a b10 = content.b();
        if ((b10 == null || (str = b10.toString()) == null) && (str = content.c().get(iVar.i())) == null) {
            str = requestHeaders.get(iVar.i());
        }
        Long a10 = content.a();
        if ((a10 == null || (str2 = a10.toString()) == null) && (str2 = content.c().get(iVar.g())) == null) {
            str2 = requestHeaders.get(iVar.g());
        }
        if (str != null) {
            block.invoke(iVar.i(), str);
        }
        if (str2 != null) {
            block.invoke(iVar.g(), str2);
        }
    }

    private static final boolean d() {
        return !n.f71155a.a();
    }
}
