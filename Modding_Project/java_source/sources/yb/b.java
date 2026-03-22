package yb;

import com.jiuzhou.cdn.model.CdnInfo;
import com.jiuzhou.cdn.model.request.LogEventCdnReq;
import java.util.List;
import ju.o;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yb.b;
import zb.f;
/* compiled from: CdnApi.kt */
@Metadata
/* loaded from: classes5.dex */
public interface b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f70765a = a.f70766a;

    /* compiled from: CdnApi.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f70766a = new a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final i<b> f70767b = kotlin.c.b(new Function0() { // from class: yb.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b c10;
                c10 = b.a.c();
                return c10;
            }
        });

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final b c() {
            return (b) f.f71552a.g().b(b.class);
        }

        @NotNull
        public final b b() {
            b value = f70767b.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            return value;
        }
    }

    @o("api/event/send")
    @Nullable
    Object a(@ju.a @NotNull LogEventCdnReq logEventCdnReq, @ju.i("localTime") long j10, @ju.i("deviceId") @NotNull String str, @ju.i("checksum") @NotNull String str2, @NotNull rs.c<Object> cVar);

    @ju.f("api/config/cdn")
    @Nullable
    Object b(@NotNull rs.c<? super ac.a<List<CdnInfo>>> cVar);
}
