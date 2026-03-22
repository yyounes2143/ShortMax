package com.facebook.internal;

import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CallbackManagerImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CallbackManagerImpl implements com.facebook.i {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final b f16088b = new b(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Integer, a> f16089c = new HashMap();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, a> f16090a = new HashMap();

    /* compiled from: CallbackManagerImpl.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        GamingFriendFinder(9),
        GamingGroupIntegration(10),
        Referral(11),
        GamingContextCreate(12),
        GamingContextSwitch(13),
        GamingContextChoose(14),
        TournamentShareDialog(15),
        TournamentJoinDialog(16);
        
        private final int offset;

        RequestCodeOffset(int i10) {
            this.offset = i10;
        }

        public final int toRequestCode() {
            return com.facebook.v.r() + this.offset;
        }
    }

    /* compiled from: CallbackManagerImpl.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        boolean a(int i10, @Nullable Intent intent);
    }

    /* compiled from: CallbackManagerImpl.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final synchronized a b(int i10) {
            return (a) CallbackManagerImpl.f16089c.get(Integer.valueOf(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d(int i10, int i11, Intent intent) {
            a b10 = b(i10);
            if (b10 != null) {
                return b10.a(i11, intent);
            }
            return false;
        }

        public final synchronized void c(int i10, @NotNull a callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (CallbackManagerImpl.f16089c.containsKey(Integer.valueOf(i10))) {
                return;
            }
            CallbackManagerImpl.f16089c.put(Integer.valueOf(i10), callback);
        }

        private b() {
        }
    }

    public final void b(int i10, @NotNull a callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f16090a.put(Integer.valueOf(i10), callback);
    }

    public final void c(int i10) {
        this.f16090a.remove(Integer.valueOf(i10));
    }

    @Override // com.facebook.i
    public boolean onActivityResult(int i10, int i11, @Nullable Intent intent) {
        a aVar = this.f16090a.get(Integer.valueOf(i10));
        if (aVar == null) {
            return f16088b.d(i10, i11, intent);
        }
        return aVar.a(i11, intent);
    }
}
