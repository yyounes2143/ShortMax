package com.startshorts.androidplayer.manager.act;

import android.content.Context;
import android.content.DialogInterface;
import ce.j;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActShowTimeInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.ActEntranceManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import ei.c;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: ActEntranceManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActEntranceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActEntranceManager.kt\ncom/startshorts/androidplayer/manager/act/ActEntranceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1557#2:135\n1628#2,3:136\n1863#2,2:139\n1863#2,2:141\n*S KotlinDebug\n*F\n+ 1 ActEntranceManager.kt\ncom/startshorts/androidplayer/manager/act/ActEntranceManager\n*L\n83#1:135\n83#1:136,3\n85#1:139,2\n111#1:141,2\n*E\n"})
/* loaded from: classes6.dex */
public final class ActEntranceManager {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static c f41564b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ActEntranceManager f41563a = new ActEntranceManager();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final e<Boolean> f41565c = o.a(Boolean.FALSE);

    private ActEntranceManager() {
    }

    private final void e() {
        Logger.f41511a.h("ActEntranceManager", "destroyHomePopDialog");
        c cVar = f41564b;
        if (cVar != null) {
            cVar.dismiss();
        }
        f41565c.setValue(Boolean.FALSE);
        f41564b = null;
    }

    private final List<ActShowTimeInfo> g() {
        ArrayList arrayList = new ArrayList();
        int q10 = TimeUtil.f48175a.q(DeviceUtil.f48146a.K());
        List<ActShowTimeInfo> h10 = b.f68412a.h();
        if (h10 != null) {
            for (ActShowTimeInfo actShowTimeInfo : h10) {
                if (actShowTimeInfo.getDays() == q10) {
                    arrayList.add(actShowTimeInfo);
                }
            }
        }
        Logger logger = Logger.f41511a;
        logger.h("ActEntranceManager", "getTodayShowTimeInfoList -> " + arrayList);
        return arrayList;
    }

    private final c h(ActResource actResource, Context context) {
        j.f3485a.l(actResource);
        c cVar = f41564b;
        if (cVar != null) {
            cVar.dismiss();
        }
        c cVar2 = new c(actResource, context);
        f41564b = cVar2;
        return cVar2;
    }

    private final r l(ActResource actResource) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "saveTodayShowTimeInfo", false, new ActEntranceManager$saveTodayShowTimeInfo$1(actResource, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(final List<ActResource> list, final Context context, final Function0<Unit> function0) {
        final ActResource actResource = (ActResource) CollectionsKt.firstOrNull(list);
        if (actResource == null) {
            Logger.f41511a.e("ActEntranceManager", "showNextDialog failed -> all actResource is showed today");
            f41565c.setValue(Boolean.FALSE);
            function0.invoke();
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ActEntranceManager", "showNextDialog show -> actListWaitToDisplay.size=" + list.size());
        list.remove(actResource);
        c h10 = h(actResource, context);
        h10.show();
        h10.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ce.b
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ActEntranceManager.o(ActResource.this, list, context, function0, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ActResource actResource, List list, Context context, Function0 function0, DialogInterface dialogInterface) {
        ActEntranceManager actEntranceManager = f41563a;
        actEntranceManager.l(actResource);
        actEntranceManager.n(list, context, function0);
    }

    @NotNull
    public final e<Boolean> f() {
        return f41565c;
    }

    public final void i() {
        Logger.f41511a.h("ActEntranceManager", "noConsumeDismissHomePopDialog");
        c cVar = f41564b;
        if (cVar != null) {
            cVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ce.a
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ActEntranceManager.j(dialogInterface);
                }
            });
        }
        e();
    }

    public final void k() {
        f41564b = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0184  */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0141 -> B:51:0x017f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x014b -> B:51:0x017f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x017c -> B:51:0x017f). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(@org.jetbrains.annotations.NotNull android.content.Context r19, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r20, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r21) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.act.ActEntranceManager.m(android.content.Context, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(DialogInterface dialogInterface) {
    }
}
