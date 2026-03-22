package com.startshorts.androidplayer.ui.activity.download.data.episodes;

import android.os.Looper;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import fk.u;
import gt.e;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import xh.f;
import xh.g;
/* compiled from: DEpisodesDB.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDEpisodesDB.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DEpisodesDB.kt\ncom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1863#2,2:134\n1863#2,2:136\n*S KotlinDebug\n*F\n+ 1 DEpisodesDB.kt\ncom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB\n*L\n91#1:134,2\n103#1:136,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DEpisodesDB {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DEpisodesDB f45229a = new DEpisodesDB();

    private DEpisodesDB() {
    }

    private final boolean f() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    private final boolean g() {
        return AccountRepo.f43052a.z0();
    }

    @Nullable
    public final Object a(@NotNull c<? super Unit> cVar) {
        if (f()) {
            Object g10 = e.g(q0.a(), new DEpisodesDB$clearAll$2(null), cVar);
            if (g10 == a.f()) {
                return g10;
            }
            return Unit.f60915a;
        }
        g.f70473a.a(u.f51776a.b()).e().a();
        return Unit.f60915a;
    }

    @Nullable
    public final Object b(int i10, @NotNull c<? super f> cVar) {
        if (f()) {
            return e.g(q0.a(), new DEpisodesDB$getEpisodesByShortPlayId$2(i10, null), cVar);
        }
        return g.f70473a.a(u.f51776a.b()).e().c(i10);
    }

    @Nullable
    public final f c(int i10) {
        return g.f70473a.a(u.f51776a.b()).e().c(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013b  */
    /* JADX WARN: Type inference failed for: r10v12, types: [com.startshorts.androidplayer.bean.shorts.BaseEpisode, T, java.lang.Object] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(int r17, int r18, int r19, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult>> r20) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB.d(int, int, int, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object e(@NotNull f fVar, @NotNull c<? super Unit> cVar) {
        if (f()) {
            Object g10 = e.g(q0.a(), new DEpisodesDB$insert$2(fVar, null), cVar);
            if (g10 == a.f()) {
                return g10;
            }
            return Unit.f60915a;
        }
        g.f70473a.a(u.f51776a.b()).e().b(fVar);
        return Unit.f60915a;
    }
}
