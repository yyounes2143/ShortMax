package com.bytedance.bdtracker;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class t3 extends v3 {

    /* renamed from: c  reason: collision with root package name */
    public final AccountManager f12402c;

    /* renamed from: d  reason: collision with root package name */
    public Account f12403d;

    /* renamed from: e  reason: collision with root package name */
    public final ConcurrentHashMap<String, String> f12404e = new ConcurrentHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    public final d f12405f;

    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Account f12406a;

        public a(Account account) {
            this.f12406a = account;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (t3.this.f12404e.size() > 0) {
                    t3 t3Var = t3.this;
                    if (t3Var.f12402c != null) {
                        for (Map.Entry<String, String> entry : t3Var.f12404e.entrySet()) {
                            if (entry != null) {
                                t3.this.f12402c.setUserData(this.f12406a, entry.getKey(), entry.getValue());
                            }
                        }
                        t3.this.f12404e.clear();
                    }
                }
            } catch (Throwable th2) {
                t3.this.f12405f.D.error(Collections.singletonList("AccountCacheHelper"), "Set account failed", th2, new Object[0]);
            }
        }
    }

    public t3(d dVar, Context context) {
        this.f12405f = dVar;
        this.f12402c = AccountManager.get(context);
    }

    @SuppressLint({"MissingPermission"})
    public void a(Account account) {
        if (account != null) {
            this.f12403d = account;
            if (this.f12404e.size() <= 0) {
                return;
            }
            this.f12470b.post(new a(account));
        }
    }

    @Override // com.bytedance.bdtracker.v3
    @SuppressLint({"MissingPermission"})
    public String b(String str) {
        Account account = this.f12403d;
        if (account == null) {
            return this.f12404e.get(str);
        }
        try {
            return this.f12402c.getUserData(account, str);
        } catch (Throwable th2) {
            this.f12405f.D.error(Collections.singletonList("AccountCacheHelper"), "Get user data failed", th2, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.bdtracker.v3
    @SuppressLint({"MissingPermission"})
    public void a(String str, String str2) {
        Account account = this.f12403d;
        if (account == null) {
            this.f12404e.put(str, str2);
        } else if (str == null || str2 == null) {
        } else {
            try {
                this.f12402c.setUserData(account, str, str2);
            } catch (Throwable th2) {
                this.f12405f.D.error(Collections.singletonList("AccountCacheHelper"), "Set user data failed", th2, new Object[0]);
            }
        }
    }

    @Override // com.bytedance.bdtracker.v3
    @SuppressLint({"MissingPermission"})
    public void a(String str) {
        AccountManager accountManager;
        this.f12404e.remove(str);
        try {
            Account account = this.f12403d;
            if (account != null && (accountManager = this.f12402c) != null) {
                accountManager.setUserData(account, str, null);
            }
        } catch (Throwable unused) {
        }
        v3 v3Var = this.f12469a;
        if (v3Var != null) {
            v3Var.a(str);
        }
    }
}
