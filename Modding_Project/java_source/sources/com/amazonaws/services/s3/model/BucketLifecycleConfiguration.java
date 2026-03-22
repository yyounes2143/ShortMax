package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.lifecycle.LifecycleFilter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class BucketLifecycleConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<Rule> f5987a;

    /* loaded from: classes2.dex */
    public static class NoncurrentVersionTransition implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private int f5988a = -1;

        /* renamed from: b  reason: collision with root package name */
        private String f5989b;

        public void b(int i10) {
            this.f5988a = i10;
        }

        public void d(String str) {
            this.f5989b = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class Rule implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private String f5990a;

        /* renamed from: b  reason: collision with root package name */
        private String f5991b;

        /* renamed from: c  reason: collision with root package name */
        private String f5992c;

        /* renamed from: d  reason: collision with root package name */
        private LifecycleFilter f5993d;

        /* renamed from: e  reason: collision with root package name */
        private int f5994e = -1;

        /* renamed from: f  reason: collision with root package name */
        private boolean f5995f = false;

        /* renamed from: g  reason: collision with root package name */
        private int f5996g = -1;

        /* renamed from: h  reason: collision with root package name */
        private Date f5997h;

        /* renamed from: i  reason: collision with root package name */
        private List<Transition> f5998i;

        /* renamed from: j  reason: collision with root package name */
        private List<NoncurrentVersionTransition> f5999j;

        /* renamed from: k  reason: collision with root package name */
        private AbortIncompleteMultipartUpload f6000k;

        public Rule b(NoncurrentVersionTransition noncurrentVersionTransition) {
            if (noncurrentVersionTransition != null) {
                if (this.f5999j == null) {
                    this.f5999j = new ArrayList();
                }
                this.f5999j.add(noncurrentVersionTransition);
                return this;
            }
            throw new IllegalArgumentException("NoncurrentVersionTransition cannot be null.");
        }

        public Rule d(Transition transition) {
            if (transition != null) {
                if (this.f5998i == null) {
                    this.f5998i = new ArrayList();
                }
                this.f5998i.add(transition);
                return this;
            }
            throw new IllegalArgumentException("Transition cannot be null.");
        }

        public void e(AbortIncompleteMultipartUpload abortIncompleteMultipartUpload) {
            this.f6000k = abortIncompleteMultipartUpload;
        }

        public void f(Date date) {
            this.f5997h = date;
        }

        public void g(int i10) {
            this.f5994e = i10;
        }

        public void h(boolean z10) {
            this.f5995f = z10;
        }

        public void i(LifecycleFilter lifecycleFilter) {
            this.f5993d = lifecycleFilter;
        }

        public void j(String str) {
            this.f5990a = str;
        }

        public void k(int i10) {
            this.f5996g = i10;
        }

        @Deprecated
        public void n(String str) {
            this.f5991b = str;
        }

        public void q(String str) {
            this.f5992c = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class Transition implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private int f6001a = -1;

        /* renamed from: b  reason: collision with root package name */
        private Date f6002b;

        /* renamed from: c  reason: collision with root package name */
        private String f6003c;

        public void b(Date date) {
            this.f6002b = date;
        }

        public void d(int i10) {
            this.f6001a = i10;
        }

        public void e(String str) {
            this.f6003c = str;
        }
    }

    public BucketLifecycleConfiguration(List<Rule> list) {
        this.f5987a = list;
    }

    public List<Rule> b() {
        return this.f5987a;
    }
}
