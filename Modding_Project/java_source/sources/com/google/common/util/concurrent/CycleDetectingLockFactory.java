package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.n;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes5.dex */
public class CycleDetectingLockFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, b>> f20304a = new n().l().i();

    /* renamed from: b  reason: collision with root package name */
    private static final d f20305b = new d(CycleDetectingLockFactory.class);

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<ArrayList<b>> f20306c = new a();

    /* loaded from: classes5.dex */
    private static class ExampleStackTrace extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        static final StackTraceElement[] f20307a = new StackTraceElement[0];

        /* renamed from: b  reason: collision with root package name */
        static final ImmutableSet<String> f20308b = ImmutableSet.C(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), b.class.getName());
    }

    /* loaded from: classes5.dex */
    public static final class PotentialDeadlockException extends ExampleStackTrace {

        /* renamed from: c  reason: collision with root package name */
        private final ExampleStackTrace f20309c;

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb2 = new StringBuilder(message);
            for (Throwable th2 = this.f20309c; th2 != null; th2 = th2.getCause()) {
                sb2.append(", ");
                sb2.append(th2.getMessage());
            }
            return sb2.toString();
        }
    }

    /* loaded from: classes5.dex */
    class a extends ThreadLocal<ArrayList<b>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<b> initialValue() {
            return Lists.k(3);
        }
    }

    /* loaded from: classes5.dex */
    private static class b {
    }
}
