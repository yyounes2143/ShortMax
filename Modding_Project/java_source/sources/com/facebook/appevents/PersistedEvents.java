package com.facebook.appevents;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistedEvents.kt */
@Metadata
/* loaded from: classes3.dex */
public final class PersistedEvents implements Serializable {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f14944b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<AccessTokenAppIdPair, List<AppEvent>> f14945a;

    /* compiled from: PersistedEvents.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class SerializationProxyV1 implements Serializable {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final a f14946b = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<AccessTokenAppIdPair, List<AppEvent>> f14947a;

        /* compiled from: PersistedEvents.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public SerializationProxyV1(@NotNull HashMap<AccessTokenAppIdPair, List<AppEvent>> proxyEvents) {
            Intrinsics.checkNotNullParameter(proxyEvents, "proxyEvents");
            this.f14947a = proxyEvents;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new PersistedEvents(this.f14947a);
        }
    }

    /* compiled from: PersistedEvents.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public PersistedEvents() {
        this.f14945a = new HashMap<>();
    }

    private final Object writeReplace() throws ObjectStreamException {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return new SerializationProxyV1(this.f14945a);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public final void b(@NotNull AccessTokenAppIdPair accessTokenAppIdPair, @NotNull List<AppEvent> appEvents) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            if (!this.f14945a.containsKey(accessTokenAppIdPair)) {
                this.f14945a.put(accessTokenAppIdPair, CollectionsKt.g1(appEvents));
                return;
            }
            List<AppEvent> list = this.f14945a.get(accessTokenAppIdPair);
            if (list != null) {
                list.addAll(appEvents);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @NotNull
    public final Set<Map.Entry<AccessTokenAppIdPair, List<AppEvent>>> d() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Set<Map.Entry<AccessTokenAppIdPair, List<AppEvent>>> entrySet = this.f14945a.entrySet();
            Intrinsics.checkNotNullExpressionValue(entrySet, "events.entries");
            return entrySet;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public PersistedEvents(@NotNull HashMap<AccessTokenAppIdPair, List<AppEvent>> appEventMap) {
        Intrinsics.checkNotNullParameter(appEventMap, "appEventMap");
        HashMap<AccessTokenAppIdPair, List<AppEvent>> hashMap = new HashMap<>();
        this.f14945a = hashMap;
        hashMap.putAll(appEventMap);
    }
}
