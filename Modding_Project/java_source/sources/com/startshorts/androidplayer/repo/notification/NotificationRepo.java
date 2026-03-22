package com.startshorts.androidplayer.repo.notification;

import ch.a;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.notification.NotificationRemoteDS;
import com.startshorts.androidplayer.repo.notification.NotificationRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import ud.b;
/* compiled from: NotificationRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NotificationRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final NotificationRepo f44301a = new NotificationRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44302b = c.b(new Function0() { // from class: ch.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a h10;
            h10 = NotificationRepo.h();
            return h10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44303c = c.b(new Function0() { // from class: ch.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            NotificationRemoteDS i10;
            i10 = NotificationRepo.i();
            return i10;
        }
    });

    private NotificationRepo() {
    }

    private final a e() {
        return (a) f44302b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NotificationRemoteDS f() {
        return (NotificationRemoteDS) f44303c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a h() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotificationRemoteDS i() {
        return new NotificationRemoteDS();
    }

    public final void c() {
        if (!AccountRepo.f43052a.w0()) {
            Logger.f41511a.h("NotificationRepo", "acceptNotificationReward -> ignore,account == null");
        } else if (b.f68412a.d()) {
            Logger.f41511a.h("NotificationRepo", "acceptNotificationReward -> ignore, acceptedNotificationsReward = true");
        } else if (!mk.c.f62521a.d()) {
            Logger.f41511a.h("NotificationRepo", "acceptNotificationReward -> ignore, isNotificationEnabled=false");
        } else if (DeviceUtil.f48146a.X()) {
            Logger.f41511a.h("NotificationRepo", "acceptNotificationReward -> ignore, below13 no need to issue rewards");
        } else {
            CoroutineUtil.l(CoroutineUtil.f48072a, "acceptNotificationReward", false, new NotificationRepo$acceptNotificationReward$1(null), 2, null);
        }
    }

    public final int g(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        return e().b(scene);
    }

    public final void j() {
        e().c();
    }

    public final void k(@NotNull String scene, int i10) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        e().d(scene, i10);
    }
}
