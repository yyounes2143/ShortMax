package com.mbridge.msdk.dycreator.bus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes5.dex */
public final class EventBus {

    /* renamed from: o  reason: collision with root package name */
    private static volatile EventBus f26469o;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26481k;

    /* renamed from: n  reason: collision with root package name */
    static ExecutorService f26468n = Executors.newCachedThreadPool();
    public static String TAG = "Event";

    /* renamed from: p  reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f26470p = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> f26471a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f26472b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, Object> f26473c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<List<Object>> f26474d = new ThreadLocal<List<Object>>() { // from class: com.mbridge.msdk.dycreator.bus.EventBus.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public List<Object> initialValue() {
            return new ArrayList();
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private final ThreadLocal<BooleanWrapper> f26475e = new ThreadLocal<BooleanWrapper>() { // from class: com.mbridge.msdk.dycreator.bus.EventBus.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public BooleanWrapper initialValue() {
            return new BooleanWrapper();
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private String f26476f = "onEvent";

    /* renamed from: g  reason: collision with root package name */
    private final HandlerPoster f26477g = new HandlerPoster(this, Looper.getMainLooper(), 10);

    /* renamed from: h  reason: collision with root package name */
    private final BackgroundPoster f26478h = new BackgroundPoster(this);

    /* renamed from: i  reason: collision with root package name */
    private final AsyncPoster f26479i = new AsyncPoster(this);

    /* renamed from: j  reason: collision with root package name */
    private final SubscriberMethodFinder f26480j = new SubscriberMethodFinder();

    /* renamed from: l  reason: collision with root package name */
    private boolean f26482l = true;

    /* renamed from: m  reason: collision with root package name */
    private Map<String, Object> f26483m = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.bus.EventBus$3  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26486a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f26486a = iArr;
            try {
                iArr[ThreadMode.PostThread.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26486a[ThreadMode.MainThread.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26486a[ThreadMode.BackgroundThread.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26486a[ThreadMode.Async.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class BooleanWrapper {

        /* renamed from: a  reason: collision with root package name */
        boolean f26487a;

        BooleanWrapper() {
        }
    }

    /* loaded from: classes5.dex */
    interface PostCallback {
        void onPostCompleted(List<SubscriberExceptionEvent> list);
    }

    private void a(Object obj, String str, boolean z10) {
        for (SubscriberMethod subscriberMethod : this.f26480j.a(obj.getClass(), str)) {
            a(obj, subscriberMethod, z10);
        }
    }

    public static void clearCaches() {
        SubscriberMethodFinder.a();
        f26470p.clear();
    }

    public static void clearSkipMethodNameVerifications() {
        SubscriberMethodFinder.clearSkipMethodNameVerifications();
    }

    public static EventBus getDefault() {
        if (f26469o == null) {
            synchronized (EventBus.class) {
                try {
                    if (f26469o == null) {
                        f26469o = new EventBus();
                    }
                } finally {
                }
            }
        }
        return f26469o;
    }

    public static void skipMethodNameVerificationFor(Class<?> cls) {
        SubscriberMethodFinder.a(cls);
    }

    public void configureLogSubscriberExceptions(boolean z10) {
        if (!this.f26481k) {
            this.f26482l = z10;
            return;
        }
        throw new EventBusException("This method must be called before any registration");
    }

    public Object getStickyEvent(Class<?> cls) {
        Object obj;
        synchronized (this.f26473c) {
            obj = this.f26473c.get(cls);
        }
        return obj;
    }

    public void post(Object obj) {
        boolean z10;
        List<Object> list = this.f26474d.get();
        list.add(obj);
        BooleanWrapper booleanWrapper = this.f26475e.get();
        if (!booleanWrapper.f26487a) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                z10 = true;
            } else {
                z10 = false;
            }
            booleanWrapper.f26487a = true;
            while (!list.isEmpty()) {
                try {
                    a(list.remove(0), z10);
                } finally {
                    booleanWrapper.f26487a = false;
                }
            }
        }
    }

    public void postSticky(Object obj) {
        post(obj);
        synchronized (this.f26473c) {
            this.f26473c.put(obj.getClass(), obj);
        }
    }

    public void register(Object obj) {
        a(obj, this.f26476f, false);
    }

    public void registerSticky(Object obj) {
        a(obj, this.f26476f, true);
    }

    public void release() {
        if (f26469o != null) {
            f26469o = null;
            f26468n = null;
            Map<Class<?>, List<Class<?>>> map = f26470p;
            if (map != null && map.size() > 0) {
                map.clear();
            }
            Map<Class<?>, CopyOnWriteArrayList<Subscription>> map2 = this.f26471a;
            if (map2 != null && map2.size() > 0) {
                this.f26471a.clear();
            }
            Map<Object, List<Class<?>>> map3 = this.f26472b;
            if (map3 != null && map3.size() > 0) {
                this.f26472b.clear();
            }
            Map<Class<?>, Object> map4 = this.f26473c;
            if (map4 != null && map4.size() > 0) {
                this.f26473c.clear();
            }
            Map<String, Object> map5 = this.f26483m;
            if (map5 != null && map5.size() > 0) {
                this.f26483m.clear();
            }
        }
    }

    public Object removeStickyEvent(Class<?> cls) {
        Object remove;
        synchronized (this.f26473c) {
            remove = this.f26473c.remove(cls);
        }
        return remove;
    }

    public synchronized void unregister(Object obj, Class<?>... clsArr) {
        try {
            if (clsArr.length != 0) {
                List<Class<?>> list = this.f26472b.get(obj);
                if (list != null) {
                    for (Class<?> cls : clsArr) {
                        a(obj, cls);
                        list.remove(cls);
                    }
                    if (list.isEmpty()) {
                        this.f26472b.remove(obj);
                    }
                } else {
                    Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
                }
            } else {
                throw new IllegalArgumentException("Provide at least one event class");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void register(String str, Object obj) {
        Map<String, Object> map = this.f26483m;
        if (map != null && map.containsKey(str)) {
            unregister(this.f26483m.get(str));
        }
        this.f26483m.put(str, obj);
        a(obj, this.f26476f, false);
    }

    public void registerSticky(Object obj, String str) {
        a(obj, str, true);
    }

    public void registerSticky(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.f26476f, true, cls, clsArr);
    }

    public synchronized void registerSticky(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, true, cls, clsArr);
    }

    public boolean removeStickyEvent(Object obj) {
        synchronized (this.f26473c) {
            try {
                Class<?> cls = obj.getClass();
                if (obj.equals(this.f26473c.get(cls))) {
                    this.f26473c.remove(cls);
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private synchronized void a(Object obj, String str, boolean z10, Class<?> cls, Class<?>... clsArr) {
        try {
            for (SubscriberMethod subscriberMethod : this.f26480j.a(obj.getClass(), str)) {
                if (cls == subscriberMethod.f26500c) {
                    a(obj, subscriberMethod, z10);
                } else if (clsArr != null) {
                    int length = clsArr.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        } else if (clsArr[i10] == subscriberMethod.f26500c) {
                            a(obj, subscriberMethod, z10);
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void register(Object obj, String str) {
        a(obj, str, false);
    }

    public void register(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.f26476f, false, cls, clsArr);
    }

    public synchronized void register(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, false, cls, clsArr);
    }

    public synchronized void unregister(Object obj) {
        try {
            List<Class<?>> list = this.f26472b.get(obj);
            if (list != null) {
                for (Class<?> cls : list) {
                    a(obj, cls);
                }
                this.f26472b.remove(obj);
            } else {
                String str = TAG;
                Log.w(str, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(Object obj, SubscriberMethod subscriberMethod, boolean z10) {
        Object obj2;
        this.f26481k = true;
        Class<?> cls = subscriberMethod.f26500c;
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f26471a.get(cls);
        Subscription subscription = new Subscription(obj, subscriberMethod);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f26471a.put(cls, copyOnWriteArrayList);
        } else {
            Iterator<Subscription> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (it.next().equals(subscription)) {
                    throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
                }
            }
        }
        subscriberMethod.f26498a.setAccessible(true);
        copyOnWriteArrayList.add(subscription);
        List<Class<?>> list = this.f26472b.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f26472b.put(obj, list);
        }
        list.add(cls);
        if (z10) {
            synchronized (this.f26473c) {
                obj2 = this.f26473c.get(cls);
            }
            if (obj2 != null) {
                a(subscription, obj2, Looper.getMainLooper() == Looper.myLooper());
            }
        }
    }

    public synchronized void unregister(String str) {
        try {
            Map<String, Object> map = this.f26483m;
            if (map != null && map.containsKey(str)) {
                Object remove = this.f26483m.remove(str);
                List<Class<?>> list = this.f26472b.get(remove);
                if (list != null) {
                    for (Class<?> cls : list) {
                        a(remove, cls);
                    }
                    this.f26472b.remove(remove);
                } else {
                    String str2 = TAG;
                    Log.w(str2, "Subscriber to unregister was not registered before: " + remove.getClass());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f26471a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i10 = 0;
            while (i10 < size) {
                if (copyOnWriteArrayList.get(i10).f26504a == obj) {
                    copyOnWriteArrayList.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
        }
    }

    private void a(Object obj, boolean z10) throws Error {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                List<Class<?>> a10 = a(cls);
                int size = a10.size();
                boolean z11 = false;
                for (int i10 = 0; i10 < size; i10++) {
                    Class<?> cls2 = a10.get(i10);
                    synchronized (this) {
                        copyOnWriteArrayList = this.f26471a.get(cls2);
                    }
                    if (copyOnWriteArrayList != null) {
                        Iterator<Subscription> it = copyOnWriteArrayList.iterator();
                        while (it.hasNext()) {
                            a(it.next(), obj, z10);
                        }
                        z11 = true;
                    }
                }
                if (z11) {
                    return;
                }
                Log.d(TAG, "No subscripers registered for event " + cls);
                if (cls == NoSubscriberEvent.class || cls == SubscriberExceptionEvent.class) {
                    return;
                }
                post(new NoSubscriberEvent(this, obj));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void a(Subscription subscription, Object obj, boolean z10) {
        int i10 = AnonymousClass3.f26486a[subscription.f26505b.f26499b.ordinal()];
        if (i10 == 1) {
            a(subscription, obj);
        } else if (i10 == 2) {
            if (z10) {
                a(subscription, obj);
            } else {
                this.f26477g.a(subscription, obj);
            }
        } else if (i10 == 3) {
            if (z10) {
                this.f26478h.enqueue(subscription, obj);
            } else {
                a(subscription, obj);
            }
        } else if (i10 == 4) {
            this.f26479i.enqueue(subscription, obj);
        } else {
            throw new IllegalStateException("Unknown thread mode: " + subscription.f26505b.f26499b);
        }
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> list;
        Map<Class<?>, List<Class<?>>> map = f26470p;
        synchronized (map) {
            try {
                list = map.get(cls);
                if (list == null) {
                    list = new ArrayList<>();
                    for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                        list.add(cls2);
                        a(list, cls2.getInterfaces());
                    }
                    f26470p.put(cls, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return list;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PendingPost pendingPost) {
        Object obj = pendingPost.f26493a;
        Subscription subscription = pendingPost.f26494b;
        PendingPost.a(pendingPost);
        a(subscription, obj);
    }

    void a(Subscription subscription, Object obj) throws Error {
        try {
            subscription.f26505b.f26498a.invoke(subscription.f26504a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (obj instanceof SubscriberExceptionEvent) {
                String str = TAG;
                Log.e(str, "SubscriberExceptionEvent subscriber " + subscription.f26504a.getClass() + " threw an exception", cause);
                SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
                String str2 = TAG;
                Log.e(str2, "Initial event " + subscriberExceptionEvent.causingEvent + " caused exception in " + subscriberExceptionEvent.causingSubscriber, subscriberExceptionEvent.throwable);
                return;
            }
            if (this.f26482l) {
                String str3 = TAG;
                Log.e(str3, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + subscription.f26504a.getClass(), cause);
            }
            post(new SubscriberExceptionEvent(this, cause, obj, subscription.f26504a));
        }
    }
}
