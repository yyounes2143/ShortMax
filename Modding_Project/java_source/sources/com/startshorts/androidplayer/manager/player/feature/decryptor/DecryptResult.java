package com.startshorts.androidplayer.manager.player.feature.decryptor;

import androidx.annotation.Keep;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DecryptResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DecryptResult {
    @Keep
    public static final int RESULT_EAGAIN = -1;
    @Keep
    public static final int RESULT_EOF = -2;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42723c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f42724a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ByteBuffer f42725b;

    /* compiled from: DecryptResult.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public DecryptResult(int i10, @Nullable ByteBuffer byteBuffer) {
        this.f42724a = i10;
        this.f42725b = byteBuffer;
    }

    @Nullable
    public final ByteBuffer a() {
        return this.f42725b;
    }

    public final int b() {
        return this.f42724a;
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(DecryptResult.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptResult");
        DecryptResult decryptResult = (DecryptResult) obj;
        if (this.f42724a == decryptResult.f42724a && Intrinsics.areEqual(this.f42725b, decryptResult.f42725b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = this.f42724a * 31;
        ByteBuffer byteBuffer = this.f42725b;
        if (byteBuffer != null) {
            i10 = byteBuffer.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "DecryptResult(result=" + this.f42724a + ", data=" + this.f42725b + ')';
    }

    public DecryptResult(int i10, @Nullable ByteBuffer byteBuffer, int i11, @Nullable DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : byteBuffer);
    }
}
