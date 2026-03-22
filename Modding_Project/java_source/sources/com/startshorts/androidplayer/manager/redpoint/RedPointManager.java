package com.startshorts.androidplayer.manager.redpoint;

import au.c;
import au.l;
import com.startshorts.androidplayer.bean.eventbus.RefreshMyListRedPointEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import ud.b;
/* compiled from: RedPointManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RedPointManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final RedPointManager f42937a;

    static {
        RedPointManager redPointManager = new RedPointManager();
        f42937a = redPointManager;
        c.d().p(redPointManager);
    }

    private RedPointManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.manager.redpoint.RedPointManager$updateMyListRedPointShortIdList$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.manager.redpoint.RedPointManager$updateMyListRedPointShortIdList$1 r0 = (com.startshorts.androidplayer.manager.redpoint.RedPointManager$updateMyListRedPointShortIdList$1) r0
            int r1 = r0.f42941j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42941j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.redpoint.RedPointManager$updateMyListRedPointShortIdList$1 r0 = new com.startshorts.androidplayer.manager.redpoint.RedPointManager$updateMyListRedPointShortIdList$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f42939h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42941j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo r5 = com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.f44246a
            r0.f42941j = r3
            java.lang.Object r5 = r5.h(r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            boolean r0 = kotlin.Result.j(r5)
            if (r0 == 0) goto L7f
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            ud.b r1 = ud.b.f68412a
            java.util.List r2 = r1.e1()
            if (r2 == 0) goto L5b
            java.util.Collection r2 = (java.util.Collection) r2
            goto L60
        L5b:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L60:
            r0.addAll(r2)
            boolean r2 = kotlin.Result.i(r5)
            if (r2 == 0) goto L6a
            r5 = 0
        L6a:
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L71
            java.util.Collection r5 = (java.util.Collection) r5
            goto L76
        L71:
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
        L76:
            r0.addAll(r5)
            kotlin.collections.CollectionsKt.i0(r0)
            r1.r4(r0)
        L7f:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.redpoint.RedPointManager.e(rs.c):java.lang.Object");
    }

    public final void b(int i10) {
        List arrayList;
        ArrayList arrayList2 = new ArrayList();
        b bVar = b.f68412a;
        List e12 = bVar.e1();
        if (e12 != null) {
            arrayList = e12;
        } else {
            arrayList = new ArrayList();
        }
        arrayList2.addAll(arrayList);
        if (!arrayList2.contains(Integer.valueOf(i10))) {
            arrayList2.add(Integer.valueOf(i10));
            bVar.r4(arrayList2);
            c.d().l(new RefreshMyListRedPointEvent(arrayList2));
            Logger logger = Logger.f41511a;
            logger.h("RedPointManager", "addMyListRedPointId: " + arrayList2);
        }
    }

    @NotNull
    public final r c() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "forceQueryMyListRedPointIds", false, new RedPointManager$forceQueryMyListRedPointIds$1(null), 2, null);
    }

    public final void d(int i10) {
        List arrayList;
        ArrayList arrayList2 = new ArrayList();
        b bVar = b.f68412a;
        List e12 = bVar.e1();
        if (e12 != null) {
            arrayList = e12;
        } else {
            arrayList = new ArrayList();
        }
        arrayList2.addAll(arrayList);
        if (arrayList2.contains(Integer.valueOf(i10))) {
            arrayList2.remove(Integer.valueOf(i10));
            bVar.r4(arrayList2);
            c.d().l(new RefreshMyListRedPointEvent(arrayList2));
            Logger logger = Logger.f41511a;
            logger.h("RedPointManager", "removeMyListRedPointId: " + arrayList2);
        }
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger.f41511a.h("RedPointManager", "receiveRefreshCollectEvent");
        if (!event.getCollect()) {
            d(event.getShortsId());
        }
    }
}
