package com.moloco.sdk.internal.publisher;

import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import java.io.ByteArrayInputStream;
import java.util.zip.GZIPInputStream;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@VisibleForTesting(otherwise = 2)
@SourceDebugExtension({"SMAP\nBidProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidProcessor.kt\ncom/moloco/sdk/internal/publisher/Base64GzippedBidProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"})
/* loaded from: classes6.dex */
public final class n implements k0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f32704a = new a(null);

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.Base64GzippedBidProcessor$process$2", f = "BidProcessor.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super String>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32705h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f32707j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f32707j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super String> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f32707j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32705h == 0) {
                kotlin.f.b(obj);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.debug$default(molocoLogger, "Base64GzippedBidProcessor", "Starting bid response pre-process with base64 decode and gunzip", false, 4, null);
                String c10 = n.this.c(this.f32707j);
                MolocoLogger.debug$default(molocoLogger, "Base64GzippedBidProcessor", "Processed bidresponse: " + c10, false, 4, null);
                return c10;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.moloco.sdk.internal.publisher.k0
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super String> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getDefault(), new b(str, null), cVar);
    }

    public final String c(String str) {
        try {
            byte[] decode = Base64.decode(str, 0);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debug$default(molocoLogger, "Base64GzippedBidProcessor", "Base64 decoded bidresponse: " + decode, false, 4, null);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(decode);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 2048);
            StringBuilder sb2 = new StringBuilder();
            byte[] bArr = new byte[2048];
            while (true) {
                try {
                    int read = gZIPInputStream.read(bArr);
                    if (read != -1) {
                        sb2.append(new String(bArr, 0, read, Charsets.UTF_8));
                    } else {
                        byteArrayInputStream.close();
                        gZIPInputStream.close();
                        return sb2.toString();
                    }
                } catch (Exception unused) {
                    MolocoLogger.warn$default(MolocoLogger.INSTANCE, "Base64GzippedBidProcessor", "Failed to unzip bidresponse, perhaps a non-gzipped response", null, false, 12, null);
                    byteArrayInputStream.close();
                    gZIPInputStream.close();
                    return null;
                }
            }
        } catch (Exception unused2) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "Base64GzippedBidProcessor", "Failed to base64 decode bidresponse, perhpas a non-base64 encoded response", null, false, 12, null);
            return null;
        }
    }
}
