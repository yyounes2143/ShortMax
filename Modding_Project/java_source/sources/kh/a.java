package kh;

import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult;
import com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult;
import com.startshorts.androidplayer.bean.unlock.QueryUnlockEpisodeProductListResult;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnlockLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockLocalDS.kt\ncom/startshorts/androidplayer/repo/unlock/UnlockLocalDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"})
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0846a f60725a = new C0846a(null);

    /* compiled from: UnlockLocalDS.kt */
    @Metadata
    /* renamed from: kh.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0846a {
        public /* synthetic */ C0846a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0846a() {
        }
    }

    @Nullable
    public final Object a(@NotNull rs.c<? super Result<QuerySubsFirstDiscountResult>> cVar) {
        QuerySubsFirstDiscountResult o12 = ud.b.f68412a.o1();
        if (o12 != null) {
            return Result.d(o12);
        }
        Result.a aVar = Result.f60901b;
        return Result.d(f.a(ResponseException.Companion.getUNKNOWN_EXCEPTION()));
    }

    @Nullable
    public final Object b(@NotNull rs.c<? super Result<QuerySingleUnlockEpisodeMethodsResult>> cVar) {
        QuerySingleUnlockEpisodeMethodsResult q12 = ud.b.f68412a.q1();
        if (q12 != null) {
            return Result.d(q12);
        }
        Result.a aVar = Result.f60901b;
        return Result.d(f.a(ResponseException.Companion.getUNKNOWN_EXCEPTION()));
    }

    @Nullable
    public final Object c(@NotNull rs.c<? super Result<QueryUnlockEpisodeProductListResult>> cVar) {
        QueryUnlockEpisodeProductListResult r12 = ud.b.f68412a.r1();
        if (r12 != null) {
            return Result.d(r12);
        }
        Result.a aVar = Result.f60901b;
        return Result.d(f.a(ResponseException.Companion.getUNKNOWN_EXCEPTION()));
    }

    public final void d(@Nullable QuerySubsFirstDiscountResult querySubsFirstDiscountResult) {
        ud.b.f68412a.C4(querySubsFirstDiscountResult);
    }

    public final void e(@Nullable QuerySingleUnlockEpisodeMethodsResult querySingleUnlockEpisodeMethodsResult) {
        ud.b.f68412a.E4(querySingleUnlockEpisodeMethodsResult);
    }

    public final void f(@Nullable QueryUnlockEpisodeProductListResult queryUnlockEpisodeProductListResult) {
        ud.b.f68412a.F4(queryUnlockEpisodeProductListResult);
    }
}
