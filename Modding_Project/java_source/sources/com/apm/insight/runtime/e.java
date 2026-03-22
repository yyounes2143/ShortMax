package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;
/* compiled from: ConfigPropGetter.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static final e f7189b = new e() { // from class: com.apm.insight.runtime.e.1

        /* renamed from: a  reason: collision with root package name */
        private Header f7191a = null;

        @Override // com.apm.insight.runtime.e
        @Nullable
        public final Object b(String str) {
            if (this.f7191a == null) {
                this.f7191a = Header.b(com.apm.insight.e.g());
            }
            return this.f7191a.f().opt(str);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private e f7190a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        this(f7189b);
    }

    @Nullable
    public Object a(String str) {
        e eVar = this.f7190a;
        if (eVar != null) {
            return eVar.a(str);
        }
        return null;
    }

    @Nullable
    public Object b(String str) {
        e eVar = this.f7190a;
        if (eVar != null) {
            return eVar.b(str);
        }
        return null;
    }

    private e(e eVar) {
        this.f7190a = eVar;
    }
}
