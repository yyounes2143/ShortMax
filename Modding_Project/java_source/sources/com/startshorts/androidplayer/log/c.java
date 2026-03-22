package com.startshorts.androidplayer.log;

import com.hades.aar.storage.base.UploadStatus;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import java.io.File;
import java.util.Date;
import jk.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ma.g;
import na.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoggerUploadAppLog.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f41525a = new c();

    /* compiled from: LoggerUploadAppLog.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a();

        void onError(@NotNull String str);
    }

    /* compiled from: LoggerUploadAppLog.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f41526a;

        /* compiled from: LoggerUploadAppLog.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[UploadStatus.values().length];
                try {
                    iArr[UploadStatus.COMPLETED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[UploadStatus.ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        b(a aVar) {
            this.f41526a = aVar;
        }

        @Override // na.d
        public void a(String id2, UploadStatus state, String msg) {
            a aVar;
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(msg, "msg");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f41526a) != null) {
                    aVar.onError(msg);
                    return;
                }
                return;
            }
            a aVar2 = this.f41526a;
            if (aVar2 != null) {
                aVar2.a();
            }
        }
    }

    private c() {
    }

    public final boolean a(boolean z10) {
        return !z10;
    }

    public final void b(@NotNull File zipFile, @NotNull String fileName, @Nullable a aVar) {
        Intrinsics.checkNotNullParameter(zipFile, "zipFile");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        String t02 = AccountRepo.f43052a.t0();
        if (t02.length() == 0) {
            t02 = ud.a.f68411a.m();
        }
        g gVar = g.f62497a;
        na.b h10 = new na.b(null, null, null, null, null, null, 63, null).h(u.f51776a.b());
        String absolutePath = zipFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        gVar.j(h10.k(absolutePath).m("android/" + DeviceUtil.f48146a.U() + '/' + TimeUtil.f48175a.g(f.a(new Date()), TimeUtil.Template.YEAR_MONTH_DAY) + '/' + t02).j(fileName).l(new b(aVar)));
    }
}
