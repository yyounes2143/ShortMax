package com.huawei.hms.common.internal;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes5.dex */
public final class Objects {

    /* loaded from: classes5.dex */
    public static final class ToStringHelper {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f22055a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f22056b;

        public final ToStringHelper add(String str, Object obj) {
            String str2 = (String) Preconditions.checkNotNull(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(str2.length() + valueOf.length() + 1);
            sb2.append(str2);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(valueOf);
            this.f22055a.add(sb2.toString());
            return this;
        }

        public final String toString() {
            String simpleName = this.f22056b.getClass().getSimpleName();
            StringBuilder sb2 = new StringBuilder(100);
            sb2.append(simpleName);
            sb2.append('{');
            int size = this.f22055a.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb2.append(this.f22055a.get(i10));
                if (i10 < size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append('}');
            return sb2.toString();
        }

        private ToStringHelper(Object obj) {
            this.f22056b = Preconditions.checkNotNull(obj);
            this.f22055a = new ArrayList();
        }
    }

    private Objects() {
        throw new AssertionError("Uninstantiable");
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static boolean isNull(Object... objArr) {
        if (objArr == null) {
            return true;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return true;
            }
        }
        return false;
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj);
    }
}
