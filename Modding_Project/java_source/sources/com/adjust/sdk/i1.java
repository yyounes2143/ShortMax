package com.adjust.sdk;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class i1 {

    /* renamed from: a  reason: collision with root package name */
    public final ActivityHandler f4322a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f4323b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public int f4324c = 0;

    public i1(ActivityHandler activityHandler) {
        this.f4322a = activityHandler;
    }

    public final void a(Runnable runnable, String str) {
        if (this.f4324c == 3) {
            ILogger logger = this.f4322a.getAdjustConfig().getLogger();
            logger.debug("Enqueuing \"" + str + "\" action to be executed after first session delay ends", new Object[0]);
            this.f4323b.add(runnable);
            return;
        }
        runnable.run();
    }

    public final void b(String str, IRunActivityHandler iRunActivityHandler) {
        if (this.f4324c == 3) {
            ILogger logger = this.f4322a.getAdjustConfig().getLogger();
            logger.debug("Enqueuing \"" + str + "\" action to be executed after first session delay ends", new Object[0]);
            this.f4322a.getAdjustConfig().preLaunchActions.preLaunchActionsArray.add(iRunActivityHandler);
            return;
        }
        iRunActivityHandler.run(this.f4322a);
    }
}
