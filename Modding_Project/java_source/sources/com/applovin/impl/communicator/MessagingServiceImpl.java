package com.applovin.impl.communicator;

import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorMessagingService;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public class MessagingServiceImpl implements AppLovinCommunicatorMessagingService {

    /* renamed from: a  reason: collision with root package name */
    private ScheduledThreadPoolExecutor f7734a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f7735b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Map f7736c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Object f7737d = new Object();

    private Queue a(String str) {
        LinkedList linkedList;
        synchronized (this.f7737d) {
            try {
                Queue queue = (Queue) this.f7736c.get(str);
                if (queue != null) {
                    linkedList = new LinkedList(queue);
                } else {
                    linkedList = new LinkedList();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return linkedList;
    }

    private void b(CommunicatorMessageImpl communicatorMessageImpl) {
        if (!communicatorMessageImpl.sticky) {
            return;
        }
        synchronized (this.f7737d) {
            try {
                Queue queue = (Queue) this.f7736c.get(communicatorMessageImpl.getTopic());
                if (queue != null) {
                    queue.add(communicatorMessageImpl);
                    if (queue.size() > 10) {
                        queue.remove();
                    }
                } else {
                    LinkedList linkedList = new LinkedList();
                    linkedList.add(communicatorMessageImpl);
                    this.f7736c.put(communicatorMessageImpl.getTopic(), linkedList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void c(final CommunicatorMessageImpl communicatorMessageImpl) {
        ScheduledThreadPoolExecutor a10 = a();
        this.f7734a = a10;
        a10.execute(new Runnable() { // from class: com.applovin.impl.communicator.b
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinBroadcastManager.sendBroadcastSync(CommunicatorMessageImpl.this, null);
            }
        });
    }

    public void maybeSendStickyMessages(String str) {
        for (CommunicatorMessageImpl communicatorMessageImpl : a(str)) {
            c(communicatorMessageImpl);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorMessagingService
    public void publish(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        c(appLovinCommunicatorMessage);
        b(appLovinCommunicatorMessage);
    }

    public String toString() {
        return "MessagingServiceImpl{}";
    }

    private ScheduledThreadPoolExecutor a() {
        synchronized (this.f7735b) {
            try {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f7734a;
                if (scheduledThreadPoolExecutor != null) {
                    return scheduledThreadPoolExecutor;
                }
                return new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.applovin.impl.communicator.a
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        Thread a10;
                        a10 = MessagingServiceImpl.a(runnable);
                        return a10;
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "AppLovinSdk:communicator");
        thread.setPriority(1);
        thread.setDaemon(true);
        return thread;
    }
}
