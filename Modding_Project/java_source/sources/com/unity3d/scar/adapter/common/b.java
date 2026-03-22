package com.unity3d.scar.adapter.common;
/* compiled from: GMAAdsError.java */
/* loaded from: classes7.dex */
public class b extends l {
    public b(GMAEvent gMAEvent, Object... objArr) {
        super(gMAEvent, null, objArr);
    }

    public static b a(nl.c cVar) {
        String format = String.format("Cannot show ad that is not loaded for placement %s", cVar.c());
        return new b(GMAEvent.AD_NOT_LOADED_ERROR, format, cVar.c(), cVar.d(), format);
    }

    public static b b(String str) {
        return new b(GMAEvent.SCAR_UNSUPPORTED, str, new Object[0]);
    }

    public static b c(nl.c cVar, String str) {
        return new b(GMAEvent.INTERNAL_LOAD_ERROR, str, cVar.c(), cVar.d(), str);
    }

    public static b d(nl.c cVar, String str) {
        return new b(GMAEvent.INTERNAL_SHOW_ERROR, str, cVar.c(), cVar.d(), str);
    }

    public static b e(String str) {
        return new b(GMAEvent.INTERNAL_SIGNALS_ERROR, str, str);
    }

    public static b f(String str, String str2, String str3) {
        return new b(GMAEvent.NO_AD_ERROR, str3, str, str2, str3);
    }

    @Override // com.unity3d.scar.adapter.common.l
    public String getDomain() {
        return "GMA";
    }

    public b(GMAEvent gMAEvent, String str, Object... objArr) {
        super(gMAEvent, str, objArr);
    }
}
