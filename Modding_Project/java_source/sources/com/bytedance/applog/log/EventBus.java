package com.bytedance.applog.log;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public final class EventBus extends Thread implements Handler.Callback {
    private static final int EMIT_EVENT_MSG = 1;
    public static AbsSingleton<EventBus> global = new AbsSingleton<EventBus>() { // from class: com.bytedance.applog.log.EventBus.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.bytedance.applog.log.AbsSingleton
        public EventBus create(Object... objArr) {
            return new EventBus();
        }
    };
    private Handler eventHandler;
    private final Map<String, List<Subscription>> subscriptionMap = new ConcurrentHashMap();

    /* loaded from: classes3.dex */
    public interface DataFetcher {
        Object fetch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class MessageEvent {
        Object data;
        String event;

        MessageEvent(String str, Object obj) {
            this.event = str;
            this.data = obj;
        }
    }

    /* loaded from: classes3.dex */
    public interface Subscription {
        void sub(Object obj);
    }

    public EventBus() {
        start();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007a A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #0 {all -> 0x0040, blocks: (B:6:0x0012, B:9:0x0020, B:11:0x0026, B:13:0x002e, B:15:0x003a, B:28:0x0070, B:29:0x0074, B:31:0x007a, B:33:0x0086, B:35:0x0097, B:37:0x009c, B:38:0x009f, B:41:0x00a9, B:40:0x00a3, B:18:0x0042, B:20:0x004c, B:22:0x0052, B:24:0x005a, B:26:0x0066), top: B:45:0x0012, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void emitEvent(com.bytedance.applog.log.EventBus.MessageEvent r9) {
        /*
            r8 = this;
            java.util.Map<java.lang.String, java.util.List<com.bytedance.applog.log.EventBus$Subscription>> r0 = r8.subscriptionMap
            java.lang.String r1 = r9.event
            java.lang.Object r0 = r0.get(r1)
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto Ld
            return
        Ld:
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.lang.String r2 = "applog_event_upload_eid"
            java.lang.String r3 = r9.event     // Catch: java.lang.Throwable -> L40
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L40
            java.lang.String r3 = "responseByte"
            java.lang.String r4 = "$$EVENT_LOCAL_IDS"
            if (r2 == 0) goto L42
            java.lang.Object r2 = r9.data     // Catch: java.lang.Throwable -> L40
            boolean r5 = r2 instanceof org.json.JSONObject     // Catch: java.lang.Throwable -> L40
            if (r5 == 0) goto L42
            org.json.JSONObject r2 = (org.json.JSONObject) r2     // Catch: java.lang.Throwable -> L40
            boolean r2 = r2.has(r4)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto L42
            java.lang.Object r2 = r9.data     // Catch: java.lang.Throwable -> L40
            org.json.JSONObject r2 = (org.json.JSONObject) r2     // Catch: java.lang.Throwable -> L40
            java.lang.Object r2 = r2.opt(r4)     // Catch: java.lang.Throwable -> L40
            boolean r5 = r2 instanceof java.util.Collection     // Catch: java.lang.Throwable -> L40
            if (r5 == 0) goto L6f
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L40
            r1.addAll(r2)     // Catch: java.lang.Throwable -> L40
            goto L6f
        L40:
            r9 = move-exception
            goto Lad
        L42:
            java.lang.String r2 = "applog_do_request_end"
            java.lang.String r5 = r9.event     // Catch: java.lang.Throwable -> L40
            boolean r2 = r2.equals(r5)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto L6f
            java.lang.Object r2 = r9.data     // Catch: java.lang.Throwable -> L40
            boolean r5 = r2 instanceof org.json.JSONObject     // Catch: java.lang.Throwable -> L40
            if (r5 == 0) goto L6f
            org.json.JSONObject r2 = (org.json.JSONObject) r2     // Catch: java.lang.Throwable -> L40
            boolean r2 = r2.has(r3)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto L6f
            java.lang.Object r2 = r9.data     // Catch: java.lang.Throwable -> L40
            org.json.JSONObject r2 = (org.json.JSONObject) r2     // Catch: java.lang.Throwable -> L40
            java.lang.Object r2 = r2.opt(r3)     // Catch: java.lang.Throwable -> L40
            boolean r5 = r2 instanceof byte[]     // Catch: java.lang.Throwable -> L40
            if (r5 == 0) goto L6f
            byte[] r2 = (byte[]) r2     // Catch: java.lang.Throwable -> L40
            java.lang.Object r2 = r2.clone()     // Catch: java.lang.Throwable -> L40
            byte[] r2 = (byte[]) r2     // Catch: java.lang.Throwable -> L40
            goto L70
        L6f:
            r2 = 0
        L70:
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L40
        L74:
            boolean r5 = r0.hasNext()     // Catch: java.lang.Throwable -> L40
            if (r5 == 0) goto Lb0
            java.lang.Object r5 = r0.next()     // Catch: java.lang.Throwable -> L40
            com.bytedance.applog.log.EventBus$Subscription r5 = (com.bytedance.applog.log.EventBus.Subscription) r5     // Catch: java.lang.Throwable -> L40
            java.lang.Object r6 = r9.data     // Catch: java.lang.Throwable -> L40
            boolean r7 = r6 instanceof org.json.JSONObject     // Catch: java.lang.Throwable -> L40
            if (r7 == 0) goto La9
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
            java.lang.Object r7 = r9.data     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
            boolean r7 = r1.isEmpty()     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
            if (r7 != 0) goto L9a
            r6.put(r4, r1)     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
        L9a:
            if (r2 == 0) goto L9f
            r6.put(r3, r2)     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
        L9f:
            r5.sub(r6)     // Catch: java.lang.Throwable -> L40 org.json.JSONException -> La3
            goto L74
        La3:
            java.lang.Object r6 = r9.data     // Catch: java.lang.Throwable -> L40
            r5.sub(r6)     // Catch: java.lang.Throwable -> L40
            goto L74
        La9:
            r5.sub(r6)     // Catch: java.lang.Throwable -> L40
            goto L74
        Lad:
            r9.printStackTrace()
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.applog.log.EventBus.emitEvent(com.bytedance.applog.log.EventBus$MessageEvent):void");
    }

    public void emit(String str, Object obj) {
        if (TextUtils.isEmpty(str) || !this.subscriptionMap.containsKey(str)) {
            return;
        }
        emit(new MessageEvent(str, obj));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            emitEvent((MessageEvent) message.obj);
        }
        return true;
    }

    public synchronized void listen(String str, Subscription subscription) {
        try {
            List<Subscription> list = this.subscriptionMap.get(str);
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(subscription);
            this.subscriptionMap.put(str, list);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void remove(String str, Subscription subscription) {
        try {
            List<Subscription> list = this.subscriptionMap.get(str);
            if (list != null && list.contains(subscription)) {
                list.remove(subscription);
                if (list.size() == 0) {
                    this.subscriptionMap.remove(str);
                } else {
                    this.subscriptionMap.put(str, list);
                }
            }
        } finally {
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        Looper.prepare();
        this.eventHandler = new Handler(this);
        Looper.loop();
    }

    public void emit(String str, DataFetcher dataFetcher) {
        if (TextUtils.isEmpty(str) || !this.subscriptionMap.containsKey(str) || dataFetcher == null) {
            return;
        }
        emit(new MessageEvent(str, dataFetcher.fetch()));
    }

    private void emit(MessageEvent messageEvent) {
        Handler handler = this.eventHandler;
        if (handler != null) {
            handler.sendMessage(handler.obtainMessage(1, messageEvent));
        } else {
            emitEvent(messageEvent);
        }
    }
}
