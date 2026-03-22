package com.unity3d.ads.core.domain;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import gt.g0;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidExecuteAdViewerRequest.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidExecuteAdViewerRequest$invoke$2", f = "AndroidExecuteAdViewerRequest.kt", l = {29}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidExecuteAdViewerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidExecuteAdViewerRequest.kt\ncom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest$invoke$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,69:1\n1#2:70\n29#3:71\n*S KotlinDebug\n*F\n+ 1 AndroidExecuteAdViewerRequest.kt\ncom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest$invoke$2\n*L\n22#1:71\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidExecuteAdViewerRequest$invoke$2 extends SuspendLambda implements Function2<g0, c<? super HttpResponse>, Object> {
    final /* synthetic */ Object[] $parameters;
    final /* synthetic */ RequestType $type;
    int label;
    final /* synthetic */ AndroidExecuteAdViewerRequest this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidExecuteAdViewerRequest$invoke$2(Object[] objArr, AndroidExecuteAdViewerRequest androidExecuteAdViewerRequest, RequestType requestType, c<? super AndroidExecuteAdViewerRequest$invoke$2> cVar) {
        super(2, cVar);
        this.$parameters = objArr;
        this.this$0 = androidExecuteAdViewerRequest;
        this.$type = requestType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidExecuteAdViewerRequest$invoke$2(this.$parameters, this.this$0, this.$type, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super HttpResponse> cVar) {
        return ((AndroidExecuteAdViewerRequest$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        String str;
        Object d10;
        HttpClient httpClient;
        HttpRequest createRequest;
        GetCachedAsset getCachedAsset;
        InputStream data;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        Object t02 = n.t0(this.$parameters, 1);
        byte[] bArr = null;
        if (t02 instanceof String) {
            str = (String) t02;
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        if (str.length() > 0) {
            try {
                Result.a aVar = Result.f60901b;
                Uri parse = Uri.parse(str);
                Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
                d10 = Result.d(parse);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            if (Result.i(d10)) {
                d10 = null;
            }
            Uri uri = (Uri) d10;
            if (uri != null) {
                if (this.$type != RequestType.GET) {
                    uri = null;
                }
                if (uri != null) {
                    getCachedAsset = this.this$0.getCachedAsset;
                    WebResourceResponse invoke$default = GetCachedAsset.invoke$default(getCachedAsset, uri, null, 2, null);
                    if (invoke$default != null && (data = invoke$default.getData()) != null) {
                        Intrinsics.checkNotNullExpressionValue(data, "data");
                        bArr = ws.a.c(data);
                    }
                }
            }
            byte[] bArr2 = bArr;
            if (bArr2 == null) {
                httpClient = this.this$0.httpClient;
                createRequest = this.this$0.createRequest(this.$type, this.$parameters);
                this.label = 1;
                Object execute = httpClient.execute(createRequest, this);
                if (execute == f10) {
                    return f10;
                }
                return execute;
            }
            return new HttpResponse(bArr2, 0, null, null, null, null, 0L, 126, null);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}
