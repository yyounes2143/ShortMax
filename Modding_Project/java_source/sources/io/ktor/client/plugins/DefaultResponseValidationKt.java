package io.ktor.client.plugins;

import io.ktor.client.HttpClientConfig;
import io.ktor.client.plugins.HttpCallValidator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultResponseValidation.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DefaultResponseValidationKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final yr.a<Unit> f58899a = new yr.a<>("ValidateMark");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final du.a f58900b = cs.a.a("io.ktor.client.plugins.DefaultResponseValidation");

    public static final void c(@NotNull final HttpClientConfig<?> httpClientConfig) {
        Intrinsics.checkNotNullParameter(httpClientConfig, "<this>");
        a.b(httpClientConfig, new Function1<HttpCallValidator.a, Unit>() { // from class: io.ktor.client.plugins.DefaultResponseValidationKt$addDefaultResponseValidation$1

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: DefaultResponseValidation.kt */
            @Metadata
            @kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.DefaultResponseValidationKt$addDefaultResponseValidation$1$1", f = "DefaultResponseValidation.kt", l = {42, 48}, m = "invokeSuspend")
            /* renamed from: io.ktor.client.plugins.DefaultResponseValidationKt$addDefaultResponseValidation$1$1  reason: invalid class name */
            /* loaded from: classes8.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<tr.c, rs.c<? super Unit>, Object> {

                /* renamed from: h  reason: collision with root package name */
                Object f58902h;

                /* renamed from: i  reason: collision with root package name */
                int f58903i;

                /* renamed from: j  reason: collision with root package name */
                int f58904j;

                /* renamed from: k  reason: collision with root package name */
                /* synthetic */ Object f58905k;

                AnonymousClass1(rs.c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(cVar);
                    anonymousClass1.f58905k = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                /* renamed from: i */
                public final Object invoke(@NotNull tr.c cVar, @Nullable rs.c<? super Unit> cVar2) {
                    return ((AnonymousClass1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
                }

                /* JADX WARN: Can't wrap try/catch for region: R(7:1|(1:(1:(8:5|6|7|8|9|(2:16|(1:(1:24)(1:23))(1:19))(1:12)|13|14)(2:28|29))(1:30))(2:39|(2:41|42)(4:43|(2:45|(2:47|(1:49)(1:50)))|51|52))|31|32|33|(1:35)(10:36|8|9|(0)|16|(0)|(1:21)|24|13|14)|(1:(0))) */
                /* JADX WARN: Code restructure failed: missing block: B:32:0x00d0, code lost:
                    r0 = r1;
                    r3 = r5;
                    r1 = r11;
                 */
                /* JADX WARN: Removed duplicated region for block: B:36:0x00d9 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:41:0x00e6 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:45:0x00f1  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
                    /*
                        Method dump skipped, instructions count: 304
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.DefaultResponseValidationKt$addDefaultResponseValidation$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void b(@NotNull HttpCallValidator.a HttpResponseValidator) {
                Intrinsics.checkNotNullParameter(HttpResponseValidator, "$this$HttpResponseValidator");
                HttpResponseValidator.d(httpClientConfig.d());
                HttpResponseValidator.e(new AnonymousClass1(null));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpCallValidator.a aVar) {
                b(aVar);
                return Unit.f60915a;
            }
        });
    }
}
