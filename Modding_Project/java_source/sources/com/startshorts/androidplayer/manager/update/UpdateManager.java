package com.startshorts.androidplayer.manager.update;

import android.app.Activity;
import au.c;
import com.startshorts.androidplayer.bean.eventbus.HandleHomeDialogProcessorEvent;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.repo.update.UpdateRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import mi.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UpdateManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUpdateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateManager.kt\ncom/startshorts/androidplayer/manager/update/UpdateManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1#2:204\n1557#3:205\n1628#3,3:206\n1557#3:209\n1628#3,3:210\n*S KotlinDebug\n*F\n+ 1 UpdateManager.kt\ncom/startshorts/androidplayer/manager/update/UpdateManager\n*L\n182#1:205\n182#1:206,3\n183#1:209\n183#1:210,3\n*E\n"})
/* loaded from: classes6.dex */
public final class UpdateManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final UpdateManager f42992a = new UpdateManager();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static d f42993b;

    private UpdateManager() {
    }

    private final int b(String str, String str2) {
        int i10;
        int i11;
        try {
            List<String> split$default = StringsKt.split$default(str, new String[]{"."}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(CollectionsKt.z(split$default, 10));
            for (String str3 : split$default) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str3)));
            }
            List<String> split$default2 = StringsKt.split$default(str2, new String[]{"."}, false, 0, 6, null);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(split$default2, 10));
            for (String str4 : split$default2) {
                arrayList2.add(Integer.valueOf(Integer.parseInt(str4)));
            }
            int max = Math.max(arrayList.size(), arrayList2.size());
            for (int i12 = 0; i12 < max; i12++) {
                if (i12 < arrayList.size()) {
                    i10 = ((Number) arrayList.get(i12)).intValue();
                } else {
                    i10 = 0;
                }
                if (i12 < arrayList2.size()) {
                    i11 = ((Number) arrayList2.get(i12)).intValue();
                } else {
                    i11 = 0;
                }
                if (i10 != i11) {
                    if (i10 > i11) {
                        return 1;
                    }
                    return -1;
                }
            }
        } catch (Exception e10) {
            Logger.f41511a.e("UpdateManager", "compareVersion exception -> " + e10.getMessage());
        }
        return 0;
    }

    private final boolean c(UpdateData updateData) {
        String V = DeviceUtil.f48146a.V();
        String minVersion = updateData.getMinVersion();
        if (minVersion == null) {
            minVersion = "";
        }
        if (b(V, minVersion) >= 0) {
            return true;
        }
        return false;
    }

    private final int d() {
        return TimeUtil.f48175a.b();
    }

    private final int e(UpdateData updateData) {
        int d10 = d() - updateData.getRecentShowDay();
        if (d10 < 0) {
            q();
            return 0;
        }
        return d10;
    }

    private final boolean f() {
        UpdateData g10 = UpdateRepo.f44764a.g();
        if (g10 == null) {
            Logger.f41511a.e("UpdateManager", "canShowUpdateDialog=false,UpdateRepo.updateData=null.");
            return false;
        } else if (g10.getUpdate() == 0) {
            Logger.f41511a.e("UpdateManager", "canShowUpdateDialog=false,update=UPDATE_NEVER.");
            return false;
        } else if (c(g10)) {
            Logger.f41511a.e("UpdateManager", "canShowUpdateDialog=false," + DeviceUtil.f48146a.V() + ">=" + g10.getMinVersion());
            return false;
        } else if (g10.getUpdate() == 2) {
            Logger.f41511a.h("UpdateManager", "canShowUpdateDialog=true, force=true.");
            return true;
        } else {
            int e10 = e(g10);
            if (e10 < g10.getTipPeriod()) {
                Logger.f41511a.h("UpdateManager", "canShowUpdateDialog=false,dayGap=(" + e10 + ") < tipPeriod(" + g10.getTipPeriod() + ')');
                return false;
            }
            Logger logger = Logger.f41511a;
            logger.h("UpdateManager", "canShowUpdateDialog=true dayGap=" + e10);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(UpdateData updateData) {
        UpdateManager updateManager = f42992a;
        if (updateManager.f()) {
            if (updateManager.k()) {
                c.d().l(updateData);
            } else {
                c.d().l(new HandleHomeDialogProcessorEvent());
            }
        }
        Logger logger = Logger.f41511a;
        logger.h("UpdateManager", "init fetchUpdateData -> " + updateData);
        return Unit.f60915a;
    }

    @NotNull
    public final String g() {
        Integer h10 = UpdateRepo.f44764a.h();
        if (h10 != null && h10.intValue() == 2) {
            return "mandatory_updates";
        }
        if (h10 != null && h10.intValue() == 1) {
            return "recommended_updates";
        }
        return "";
    }

    public final void h() {
        UpdateRepo.f44764a.d(new Function1() { // from class: zf.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit i10;
                i10 = UpdateManager.i((UpdateData) obj);
                return i10;
            }
        });
    }

    public final boolean j() {
        Integer h10 = UpdateRepo.f44764a.h();
        if (h10 != null && h10.intValue() == 2) {
            return true;
        }
        return false;
    }

    public final boolean k() {
        if (j() && f()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        if (f() != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean l() {
        /*
            r4 = this;
            com.startshorts.androidplayer.repo.update.UpdateRepo r0 = com.startshorts.androidplayer.repo.update.UpdateRepo.f44764a
            java.lang.Integer r0 = r0.h()
            if (r0 != 0) goto L9
            goto L17
        L9:
            int r0 = r0.intValue()
            r1 = 1
            if (r0 != r1) goto L17
            boolean r0 = r4.f()
            if (r0 == 0) goto L17
            goto L18
        L17:
            r1 = 0
        L18:
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "isRecommendShowUpdateDialog = "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "UpdateManager"
            r0.h(r3, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.update.UpdateManager.l():boolean");
    }

    public final boolean m() {
        d dVar = f42993b;
        if (dVar == null || !dVar.isShowing()) {
            return false;
        }
        return true;
    }

    @NotNull
    public final r n() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "logUpdateSuccessEvent", false, new UpdateManager$logUpdateSuccessEvent$1(null), 2, null);
    }

    @Nullable
    public final d o(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        p();
        if (!f()) {
            Logger.f41511a.h("UpdateManager", "create new UpdateDialog failed,displayAble = false");
            return null;
        } else if (m()) {
            Logger.f41511a.h("UpdateManager", "create new UpdateDialog failed,isUpdateDialogShowing = true");
            return null;
        } else {
            Logger.f41511a.h("UpdateManager", "create new UpdateDialog");
            d dVar = new d(activity);
            f42993b = dVar;
            return dVar;
        }
    }

    public final void p() {
        d dVar = f42993b;
        if (dVar != null) {
            f42993b = null;
            if (dVar.isShowing()) {
                dVar.dismiss();
            }
        }
    }

    public final void q() {
        UpdateRepo updateRepo = UpdateRepo.f44764a;
        UpdateData g10 = updateRepo.g();
        if (g10 != null) {
            g10.setRecentShowDay(f42992a.d());
            updateRepo.k(g10);
        }
    }

    public final void r() {
        UpdateRepo updateRepo = UpdateRepo.f44764a;
        UpdateData g10 = updateRepo.g();
        if (g10 != null) {
            g10.setVersionCodeUpdating(g10.getMinVersion());
            updateRepo.k(g10);
        }
    }
}
