package com.startshorts.androidplayer.repo.unlock;

import android.content.Context;
import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.event.EventInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeCost;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS;
import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
import java.util.ArrayList;
import java.util.List;
import kh.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnlockRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnlockRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockRepo.kt\ncom/startshorts/androidplayer/repo/unlock/UnlockRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,317:1\n1863#2,2:318\n1872#2,3:320\n*S KotlinDebug\n*F\n+ 1 UnlockRepo.kt\ncom/startshorts/androidplayer/repo/unlock/UnlockRepo\n*L\n155#1:318,2\n283#1:320,3\n*E\n"})
/* loaded from: classes7.dex */
public final class UnlockRepo {
    @NotNull

    /* renamed from: a */
    public static final UnlockRepo f44686a = new UnlockRepo();
    @NotNull

    /* renamed from: b */
    private static final i f44687b = c.b(new Function0() { // from class: kh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockRemoteDS i10;
            i10 = UnlockRepo.i();
            return i10;
        }
    });
    @NotNull

    /* renamed from: c */
    private static final i f44688c = c.b(new Function0() { // from class: kh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a h10;
            h10 = UnlockRepo.h();
            return h10;
        }
    });

    private UnlockRepo() {
    }

    public final a e() {
        return (a) f44688c.getValue();
    }

    public final UnlockRemoteDS f() {
        return (UnlockRemoteDS) f44687b.getValue();
    }

    private final void g(BaseEpisode baseEpisode, boolean z10, List<BaseEpisode> list, List<UnlockEpisodeCost> list2) {
        int totalEpisodes;
        String str;
        List<BaseEpisode> list3 = list;
        int i10 = 0;
        if (list3 != null && !list3.isEmpty()) {
            totalEpisodes = list.get(0).getTotalEpisodes();
        } else {
            totalEpisodes = baseEpisode.getTotalEpisodes();
        }
        Logger logger = Logger.f41511a;
        logger.h("UnlockRepo", "logUnlockEpisodeByCoinEvent -> batchUnlock(" + z10 + ") totalEpisodes(" + totalEpisodes + ')');
        ArrayList arrayList = new ArrayList();
        if (list2 != null) {
            for (Object obj : list2) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                UnlockEpisodeCost unlockEpisodeCost = (UnlockEpisodeCost) obj;
                Bundle bundle = new Bundle();
                bundle.putString("reel_id", baseEpisode.getShortPlayCode());
                bundle.putString("episode", String.valueOf(baseEpisode.getEpisodeNum() + i10));
                if (baseEpisode.getLockBegin() > 0) {
                    bundle.putInt("lock_begin", baseEpisode.getLockBegin());
                }
                bundle.putInt("price", unlockEpisodeCost.getUseBonus() + unlockEpisodeCost.getUseCoins());
                bundle.putInt("coins", unlockEpisodeCost.getUseCoins());
                bundle.putInt("tickets", unlockEpisodeCost.getUseBonus());
                bundle.putInt("account_coins", unlockEpisodeCost.getCoins());
                bundle.putInt("account_tickets", unlockEpisodeCost.getBonus());
                String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                if (i10 >= 1 && !z10) {
                    str = "1";
                } else {
                    str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                }
                bundle.putString("is_auto", str);
                if (baseEpisode.getEpisodeNum() + i10 >= totalEpisodes) {
                    str2 = "1";
                }
                bundle.putString("is_ep_end", str2);
                Account a02 = AccountRepo.f43052a.a0();
                if (a02 != null && a02.isUnlockTypeIaspUser()) {
                    bundle.putString("Put_on_type", "IASP");
                }
                Unit unit = Unit.f60915a;
                arrayList.add(new EventInfo("episode_unlock_success", bundle, 0L, 4, null));
                i10 = i11;
            }
        }
        EventManager.f42463a.v0(arrayList);
    }

    public static final a h() {
        return new a();
    }

    public static final UnlockRemoteDS i() {
        return new UnlockRemoteDS();
    }

    public static /* synthetic */ Object k(UnlockRepo unlockRepo, boolean z10, Context context, String str, rs.c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            context = null;
        }
        return unlockRepo.j(z10, context, str, cVar);
    }

    public static /* synthetic */ Object m(UnlockRepo unlockRepo, boolean z10, Context context, int i10, int i11, String str, rs.c cVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        if ((i12 & 2) != 0) {
            context = null;
        }
        return unlockRepo.l(z11, context, i10, i11, str, cVar);
    }

    public static /* synthetic */ Object o(UnlockRepo unlockRepo, Context context, int i10, int i11, String str, rs.c cVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            context = null;
        }
        return unlockRepo.n(context, i10, i11, str, cVar);
    }

    public static /* synthetic */ Object u(UnlockRepo unlockRepo, Context context, int i10, String str, rs.c cVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            context = null;
        }
        return unlockRepo.t(context, i10, str, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00dd  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(boolean r19, @org.jetbrains.annotations.Nullable android.content.Context r20, @org.jetbrains.annotations.NotNull java.lang.String r21, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult>> r22) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.j(boolean, android.content.Context, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0156 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x008c  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(boolean r23, @org.jetbrains.annotations.Nullable android.content.Context r24, int r25, int r26, @org.jetbrains.annotations.NotNull java.lang.String r27, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult>> r28) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.l(boolean, android.content.Context, int, int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00fa  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object n(@org.jetbrains.annotations.Nullable android.content.Context r21, int r22, int r23, @org.jetbrains.annotations.NotNull java.lang.String r24, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.unlock.QueryUnlockEpisodeProductListResult>> r25) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.n(android.content.Context, int, int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0036  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryUnlockPanelAdd$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryUnlockPanelAdd$1 r0 = (com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryUnlockPanelAdd$1) r0
            int r1 = r0.f44730j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44730j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryUnlockPanelAdd$1 r0 = new com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryUnlockPanelAdd$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f44728h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44730j
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            r6.n()
            goto L46
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS r6 = r4.f()
            r0.f44730j = r3
            java.lang.Object r5 = r6.d(r5, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.p(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0036  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(int r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.unlock.UnlockRepo$retainSubsSkuExpose$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.unlock.UnlockRepo$retainSubsSkuExpose$1 r0 = (com.startshorts.androidplayer.repo.unlock.UnlockRepo$retainSubsSkuExpose$1) r0
            int r1 = r0.f44733j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44733j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.unlock.UnlockRepo$retainSubsSkuExpose$1 r0 = new com.startshorts.androidplayer.repo.unlock.UnlockRepo$retainSubsSkuExpose$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44731h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44733j
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            r7.n()
            goto L46
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS r7 = r4.f()
            r0.f44733j = r3
            java.lang.Object r5 = r7.e(r5, r6, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.q(int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0084  */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v14, types: [com.startshorts.androidplayer.bean.shorts.BaseEpisode, T] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(@org.jetbrains.annotations.Nullable android.content.Context r25, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.shorts.BaseEpisode r26, boolean r27, @org.jetbrains.annotations.Nullable java.lang.String r28, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.unlock.UnlockEpisodeByAdResult>> r29) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.r(android.content.Context, com.startshorts.androidplayer.bean.shorts.BaseEpisode, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0033  */
    /* JADX WARN: Type inference failed for: r1v22, types: [T, java.lang.Object] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(@org.jetbrains.annotations.Nullable android.content.Context r26, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.shorts.BaseEpisode r27, boolean r28, boolean r29, @org.jetbrains.annotations.NotNull java.lang.String r30, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.unlock.UnlockEpisodeByCoinsResult>> r31) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.s(android.content.Context, com.startshorts.androidplayer.bean.shorts.BaseEpisode, boolean, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(@org.jetbrains.annotations.Nullable android.content.Context r5, int r6, @org.jetbrains.annotations.Nullable java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.unlock.UnlockRepo$unlockEpisodeByDiscount$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.unlock.UnlockRepo$unlockEpisodeByDiscount$1 r0 = (com.startshorts.androidplayer.repo.unlock.UnlockRepo$unlockEpisodeByDiscount$1) r0
            int r1 = r0.f44759j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44759j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.unlock.UnlockRepo$unlockEpisodeByDiscount$1 r0 = new com.startshorts.androidplayer.repo.unlock.UnlockRepo$unlockEpisodeByDiscount$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f44757h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44759j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS r8 = r4.f()
            r0.f44759j = r3
            java.lang.Object r5 = r8.h(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.unlock.UnlockRepo.t(android.content.Context, int, java.lang.String, rs.c):java.lang.Object");
    }
}
