package io.ktor.client.plugins;

import at.n;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpSend;
import io.ktor.client.request.HttpRequestBuilder;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.h;
import wr.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpSend.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpSend$Plugin$install$1", f = "HttpSend.kt", l = {104, 105}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nHttpSend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpSend.kt\nio/ktor/client/plugins/HttpSend$Plugin$install$1\n+ 2 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n16#2,4:159\n21#2,10:166\n17#3,3:163\n1855#4,2:176\n*S KotlinDebug\n*F\n+ 1 HttpSend.kt\nio/ktor/client/plugins/HttpSend$Plugin$install$1\n*L\n96#1:159,4\n96#1:166,10\n96#1:163,3\n100#1:176,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpSend$Plugin$install$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59079h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f59080i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59081j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpSend f59082k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ HttpClient f59083l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpSend$Plugin$install$1(HttpSend httpSend, HttpClient httpClient, rs.c<? super HttpSend$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f59082k = httpSend;
        this.f59083l = httpClient;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        HttpSend$Plugin$install$1 httpSend$Plugin$install$1 = new HttpSend$Plugin$install$1(this.f59082k, this.f59083l, cVar2);
        httpSend$Plugin$install$1.f59080i = cVar;
        httpSend$Plugin$install$1.f59081j = obj;
        return httpSend$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r11v15, types: [T, io.ktor.client.plugins.HttpSend$DefaultSender] */
    /* JADX WARN: Type inference failed for: r8v1, types: [T, io.ktor.client.plugins.HttpSend$b] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ds.c cVar;
        int i10;
        List list;
        List list2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f59079h;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cVar = (ds.c) this.f59080i;
            f.b(obj);
        } else {
            f.b(obj);
            cVar = (ds.c) this.f59080i;
            Object obj2 = this.f59081j;
            if (obj2 instanceof xr.b) {
                HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) cVar.b();
                if (obj2 == null) {
                    httpRequestBuilder.j(xr.a.f70524a);
                    KType typeOf = Reflection.typeOf(xr.b.class);
                    httpRequestBuilder.k(es.b.b(TypesJVMKt.getJavaType(typeOf), Reflection.getOrCreateKotlinClass(xr.b.class), typeOf));
                } else if (obj2 instanceof xr.b) {
                    httpRequestBuilder.j(obj2);
                    httpRequestBuilder.k(null);
                } else {
                    httpRequestBuilder.j(obj2);
                    KType typeOf2 = Reflection.typeOf(xr.b.class);
                    httpRequestBuilder.k(es.b.b(TypesJVMKt.getJavaType(typeOf2), Reflection.getOrCreateKotlinClass(xr.b.class), typeOf2));
                }
                i10 = this.f59082k.f59069a;
                ?? defaultSender = new HttpSend.DefaultSender(i10, this.f59083l);
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = defaultSender;
                list = this.f59082k.f59070b;
                kotlin.ranges.d r10 = kotlin.ranges.e.r(CollectionsKt.p(list), 0);
                HttpSend httpSend = this.f59082k;
                Iterator<Integer> it = r10.iterator();
                while (it.hasNext()) {
                    int nextInt = ((m0) it).nextInt();
                    list2 = httpSend.f59070b;
                    objectRef.element = new HttpSend.b((n) list2.get(nextInt), (h) objectRef.element);
                }
                this.f59080i = cVar;
                this.f59079h = 1;
                obj = ((h) objectRef.element).a((HttpRequestBuilder) cVar.b(), this);
                if (obj == f10) {
                    return f10;
                }
            } else {
                throw new IllegalStateException(StringsKt.p("\n|Fail to prepare request body for sending. \n|The body type is: " + Reflection.getOrCreateKotlinClass(obj2.getClass()) + ", with Content-Type: " + io.ktor.http.d.d((l) cVar.b()) + ".\n|\n|If you expect serialized body, please check that you have installed the corresponding plugin(like `ContentNegotiation`) and set `Content-Type` header.", null, 1, null).toString());
            }
        }
        this.f59080i = null;
        this.f59079h = 2;
        if (cVar.d((HttpClientCall) obj, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
