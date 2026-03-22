package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class AppLovinBroadcastManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f9474a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Map f9475b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final ArrayList f9476c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private static final Handler f9477d = new a(Looper.getMainLooper());

    /* loaded from: classes2.dex */
    public interface Receiver {
        void onReceive(Intent intent, @Nullable Map<String, Object> map);
    }

    /* loaded from: classes2.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                AppLovinBroadcastManager.b();
            } else {
                super.handleMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final Intent f9478a;

        /* renamed from: b  reason: collision with root package name */
        final Map f9479b;

        /* renamed from: c  reason: collision with root package name */
        final List f9480c;

        b(Intent intent, Map map, List list) {
            this.f9478a = intent;
            this.f9479b = map;
            this.f9480c = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f9481a;

        /* renamed from: b  reason: collision with root package name */
        final Receiver f9482b;

        /* renamed from: c  reason: collision with root package name */
        boolean f9483c;

        /* renamed from: d  reason: collision with root package name */
        boolean f9484d;

        c(IntentFilter intentFilter, Receiver receiver) {
            this.f9481a = intentFilter;
            this.f9482b = receiver;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (f9474a) {
                try {
                    ArrayList arrayList = f9476c;
                    size = arrayList.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    arrayList.toArray(bVarArr);
                    arrayList.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = bVarArr[i10];
                if (bVar != null) {
                    for (c cVar : bVar.f9480c) {
                        if (cVar != null && !cVar.f9484d) {
                            cVar.f9482b.onReceive(bVar.f9478a, bVar.f9479b);
                        }
                    }
                }
            }
        }
    }

    public static void registerReceiver(Receiver receiver, IntentFilter intentFilter) {
        Map map = f9474a;
        synchronized (map) {
            try {
                c cVar = new c(intentFilter, receiver);
                ArrayList arrayList = (ArrayList) map.get(receiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    map.put(receiver, arrayList);
                }
                arrayList.add(cVar);
                Iterator<String> actionsIterator = intentFilter.actionsIterator();
                while (actionsIterator.hasNext()) {
                    String next = actionsIterator.next();
                    Map map2 = f9475b;
                    ArrayList arrayList2 = (ArrayList) map2.get(next);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        map2.put(next, arrayList2);
                    }
                    arrayList2.add(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean sendBroadcast(Intent intent, @Nullable Map<String, Object> map) {
        synchronized (f9474a) {
            try {
                List a10 = a(intent);
                if (a10 == null) {
                    return false;
                }
                f9476c.add(new b(intent, map, a10));
                Handler handler = f9477d;
                if (!handler.hasMessages(1)) {
                    handler.sendEmptyMessage(1);
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void sendBroadcastSync(Intent intent, @Nullable Map<String, Object> map) {
        List<c> a10 = a(intent);
        if (a10 == null) {
            return;
        }
        for (c cVar : a10) {
            if (!cVar.f9484d) {
                cVar.f9482b.onReceive(intent, map);
            }
        }
    }

    public static void sendBroadcastSyncWithPendingBroadcasts(Intent intent, @Nullable Map<String, Object> map) {
        if (sendBroadcast(intent, map)) {
            b();
        }
    }

    public static boolean sendBroadcastWithAdObject(String str, Object obj) {
        HashMap hashMap = new HashMap(1);
        hashMap.put("ad", obj);
        return sendBroadcast(new Intent(str), hashMap);
    }

    public static void unregisterReceiver(Receiver receiver) {
        Map map = f9474a;
        synchronized (map) {
            try {
                List<c> list = (List) map.remove(receiver);
                if (list == null) {
                    return;
                }
                for (c cVar : list) {
                    cVar.f9484d = true;
                    Iterator<String> actionsIterator = cVar.f9481a.actionsIterator();
                    while (actionsIterator.hasNext()) {
                        String next = actionsIterator.next();
                        List list2 = (List) f9475b.get(next);
                        if (list2 != null) {
                            Iterator it = list2.iterator();
                            while (it.hasNext()) {
                                if (((c) it.next()).f9482b == receiver) {
                                    cVar.f9484d = true;
                                    it.remove();
                                }
                            }
                            if (list2.size() <= 0) {
                                f9475b.remove(next);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static List a(Intent intent) {
        synchronized (f9474a) {
            try {
                String action = intent.getAction();
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                List<c> list = (List) f9475b.get(action);
                if (list == null) {
                    return null;
                }
                ArrayList<c> arrayList = null;
                for (c cVar : list) {
                    if (!cVar.f9483c && cVar.f9481a.match(action, null, scheme, data, categories, "AppLovinBroadcastManager") >= 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(cVar);
                        cVar.f9483c = true;
                    }
                }
                if (arrayList == null) {
                    return null;
                }
                for (c cVar2 : arrayList) {
                    cVar2.f9483c = false;
                }
                return arrayList;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
