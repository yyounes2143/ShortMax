package com.facebook;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CallbackManager.kt */
@Metadata
/* loaded from: classes3.dex */
public interface i {

    /* compiled from: CallbackManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f15572a;

        /* renamed from: b  reason: collision with root package name */
        private final int f15573b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Intent f15574c;

        public a(int i10, int i11, @Nullable Intent intent) {
            this.f15572a = i10;
            this.f15573b = i11;
            this.f15574c = intent;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f15572a == aVar.f15572a && this.f15573b == aVar.f15573b && Intrinsics.areEqual(this.f15574c, aVar.f15574c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((Integer.hashCode(this.f15572a) * 31) + Integer.hashCode(this.f15573b)) * 31;
            Intent intent = this.f15574c;
            if (intent == null) {
                hashCode = 0;
            } else {
                hashCode = intent.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "ActivityResultParameters(requestCode=" + this.f15572a + ", resultCode=" + this.f15573b + ", data=" + this.f15574c + ')';
        }
    }

    /* compiled from: CallbackManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f15575a = new b();

        private b() {
        }

        @NotNull
        public static final i a() {
            return new CallbackManagerImpl();
        }
    }

    boolean onActivityResult(int i10, int i11, @Nullable Intent intent);
}
