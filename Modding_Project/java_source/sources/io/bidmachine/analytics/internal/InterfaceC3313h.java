package io.bidmachine.analytics.internal;

import io.bidmachine.analytics.ReaderConfig;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: io.bidmachine.analytics.internal.h  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public interface InterfaceC3313h {
    void a(List list);

    /* renamed from: io.bidmachine.analytics.internal.h$a */
    /* loaded from: classes7.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final ReaderConfig.Rule f54098a;

        /* renamed from: b  reason: collision with root package name */
        private final String f54099b;

        /* renamed from: c  reason: collision with root package name */
        private final q0 f54100c;

        public a(ReaderConfig.Rule rule, String str, q0 q0Var) {
            this.f54098a = rule;
            this.f54099b = str;
            this.f54100c = q0Var;
        }

        public final String a() {
            return this.f54099b;
        }

        public final q0 b() {
            return this.f54100c;
        }

        public final ReaderConfig.Rule c() {
            return this.f54098a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f54098a, aVar.f54098a) && Intrinsics.areEqual(this.f54099b, aVar.f54099b) && Intrinsics.areEqual(this.f54100c, aVar.f54100c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f54098a.hashCode() * 31;
            String str = this.f54099b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            q0 q0Var = this.f54100c;
            if (q0Var != null) {
                i10 = q0Var.hashCode();
            }
            return i11 + i10;
        }

        public String toString() {
            return "Data(rule=" + this.f54098a + ", dataHash=" + this.f54099b + ", error=" + this.f54100c + ')';
        }

        public /* synthetic */ a(ReaderConfig.Rule rule, String str, q0 q0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(rule, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : q0Var);
        }
    }
}
