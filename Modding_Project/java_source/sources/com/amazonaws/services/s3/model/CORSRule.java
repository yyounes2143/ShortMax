package com.amazonaws.services.s3.model;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.List;
/* loaded from: classes2.dex */
public class CORSRule {

    /* renamed from: a  reason: collision with root package name */
    private String f6015a;

    /* renamed from: b  reason: collision with root package name */
    private List<AllowedMethods> f6016b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f6017c;

    /* renamed from: d  reason: collision with root package name */
    private int f6018d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f6019e;

    /* renamed from: f  reason: collision with root package name */
    private List<String> f6020f;

    /* loaded from: classes2.dex */
    public enum AllowedMethods {
        GET(ShareTarget.METHOD_GET),
        PUT("PUT"),
        HEAD("HEAD"),
        POST(ShareTarget.METHOD_POST),
        DELETE("DELETE");
        
        private final String AllowedMethod;

        AllowedMethods(String str) {
            this.AllowedMethod = str;
        }

        public static AllowedMethods fromValue(String str) throws IllegalArgumentException {
            AllowedMethods[] values;
            for (AllowedMethods allowedMethods : values()) {
                String allowedMethods2 = allowedMethods.toString();
                if (allowedMethods2 == null && str == null) {
                    return allowedMethods;
                }
                if (allowedMethods2 != null && allowedMethods2.equals(str)) {
                    return allowedMethods;
                }
            }
            throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.AllowedMethod;
        }
    }

    public void a(List<String> list) {
        this.f6020f = list;
    }

    public void b(List<AllowedMethods> list) {
        this.f6016b = list;
    }

    public void c(List<String> list) {
        this.f6017c = list;
    }

    public void d(List<String> list) {
        this.f6019e = list;
    }

    public void e(String str) {
        this.f6015a = str;
    }

    public void f(int i10) {
        this.f6018d = i10;
    }
}
