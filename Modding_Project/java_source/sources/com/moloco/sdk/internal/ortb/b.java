package com.moloco.sdk.internal.ortb;

import com.moloco.sdk.internal.g0;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* loaded from: classes6.dex */
public final class b implements com.moloco.sdk.internal.ortb.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final kotlinx.serialization.json.a f32328a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.scheduling.a f32329b;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ortb.BidResponseParserImpl$invoke$2", f = "BidResponseParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nBidResponseParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidResponseParser.kt\ncom/moloco/sdk/internal/ortb/BidResponseParserImpl$invoke$2\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,39:1\n123#2:40\n32#3:41\n80#4:42\n*S KotlinDebug\n*F\n+ 1 BidResponseParser.kt\ncom/moloco/sdk/internal/ortb/BidResponseParserImpl$invoke$2\n*L\n30#1:40\n30#1:41\n30#1:42\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.ortb.model.e, Exception>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32330h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f32332j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f32332j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.ortb.model.e, Exception>> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f32332j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32330h == 0) {
                f.b(obj);
                try {
                    kotlinx.serialization.json.a aVar = b.this.f32328a;
                    String str = this.f32332j;
                    KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(com.moloco.sdk.internal.ortb.model.e.class));
                    Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                    return new g0.b(e.a((com.moloco.sdk.internal.ortb.model.e) aVar.b(c10, str)));
                } catch (Exception e10) {
                    return new g0.a(e10);
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public b(@NotNull kotlinx.serialization.json.a json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.f32328a = json;
        this.f32329b = com.moloco.sdk.internal.scheduling.c.a();
    }

    @Override // com.moloco.sdk.internal.ortb.a
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.ortb.model.e, Exception>> cVar) {
        return gt.e.g(this.f32329b.getIo(), new a(str, null), cVar);
    }
}
